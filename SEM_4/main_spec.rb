require_relative 'main'

RSpec.describe ArrayWorker do
    describe '#calc' do
        context 'when params in nil' do
            it 'it should raise exception' do
                expect{ ArrayWorker.sort_by_length(nil) }.to raise_error
            end
        end

        context 'when params is present' do
            let(:input_array) { ['aa', 'b', 'cccc'] }
            let(:expected_array) { input_array.sort_by(&:length) }
            #let - будет генерировать постоянно что-то новое
            #let! - будет генерировать только один раз
            it 'should return sorted array' do
                expect(described_class.sort_by_length(input_array)).to(eq(expected_array))
                # expect( ArrayWorker.sort_by_length(num).to eq(['a', 'b', 'c', 'd', 'e'])
            end
        end
    end
end
