# frozen_string_literal: true

require 'net/http'

# Top level class documentation
class Lab10Controller < ApplicationController

  def input; end

  def view
    @number = params['num'].to_i
    @result = helpers.automorf(@number)

  # генерация ссылки на второй сервер
    url = URI.parse("http://localhost:3001/lab10server/render_xml.#{params[:where] == 'client' ? 'xml' : 'html'}?&result[]=#{@result&.join('&result[]=')}")

    if params[:where] == 'server'
      res = Net::HTTP.get_response(url)
      if params[:what] == 'source'
        render plain: res.body 
      else 
        render html: res.body.html_safe, layout: false
      end 

    else
      @xml = Nokogiri::XML(@result.to_xml)
      @xml.root.add_previous_sibling Nokogiri::XML::ProcessingInstruction.new(@xml, "xml-stylesheet", 'type="text/xsl" href="/xml_styler.xslt"')
      if params[:what] == 'source' 
        render plain: @xml, layout: false
      else
        respond_to do |format|
          format.xml {render xml: @xml.to_s}
        end  
      end    
    end 
  end
end    
    