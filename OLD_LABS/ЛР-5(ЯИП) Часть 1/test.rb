# frozen_string_literal: true
require 'C:\Users\Komp\Desktop\ЛР-5(ЯИП) Часть 1\spec\spec_helper.rb'
require './work'
require 'faker'

RSpec.describe Checker do
  describe '#check' do
    context 'when param is number' do
      let(:param) { Faker::Number.normal }

      it 'should turn param into float' do
        expect(described_class.check(param)).to eq(Float(param))
      end
    end
    context 'when param is not number or is null' do
      it 'should recurse' do
      end
    end
  end
end
