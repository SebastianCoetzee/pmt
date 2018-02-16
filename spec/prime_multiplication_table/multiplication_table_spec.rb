describe PrimeMultiplicationTable::MultiplicationTable do
  describe "#multiplication_table_array function" do
    describe "for n = 2" do
      let(:n) { 2 }

      it "returns the correct array" do
        expect(described_class.new(n).multiplication_table_array).to eq(
          [
            [nil, 2, 3],
            [  2, 4, 6],
            [  3, 6, 9]
          ]
        )
      end
    end

    describe "for n = 3" do
      let(:n) { 3 }

      it "returns the correct array" do
        expect(described_class.new(n).multiplication_table_array).to eq(
          [
            [nil,  2,  3, 5 ],
            [  2,  4,  6, 10],
            [  3,  6,  9, 15],
            [  5, 10, 15, 25]
          ]
        )
      end
    end
  end
end
