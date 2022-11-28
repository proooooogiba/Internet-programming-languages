# frozen_string_literal: true

require './Интерфейс'
require 'faker'

RSpec.describe Validator do
  describe '#check' do
    context 'when param is number' do
      let(:param) { Faker::Number.normal }
      it 'should turn param into float' do
        expect(described_class.check(param)).to eq(Float(param))
      end
    end
    context 'when param is not number or is void' do
      it 'input repeat' do
        expect(described_class.check(tries.chomp!))
      end
    end
  end
end