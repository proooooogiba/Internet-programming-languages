require "test_helper"

class SeqControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lab10_input_url
    assert_response :success
  end

  test "should get view" do
    get lab10_view_url
    assert_response :success
  end

  test 'should render plain html' do
    get 'http://localhost:3000/seq/view.xml', params: { num: "11", where: :server, what: :transformed }
    assert_equal @response.media_type, 'text/html'
    assert_empty(Nokogiri::HTML(@response.body).errors)
  end

  test 'should render plain xml' do
    get 'http://localhost:3000/seq/view.xml', params: { num: "37", where: :server, what: :source }
    assert_equal @response.media_type, 'text/plain'
  end
end