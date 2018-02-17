describe Pmt::Primes do
  describe "#is_prime_number function" do
    describe "for an array of expected inputs" do
      let(:inputs) { [
        [2, true],
        [3, true],
        [4, false],
        [23, true],
        [24, false],
        [33, false],
        [195, false],
        [197, true]
      ] }

      it "should return the correct result" do
        inputs.each do |input|
          expect(described_class.is_prime_number(input.first)).to eq(input.last)
        end
      end
    end
  end

  describe "#first function" do
    describe "when given a negative number" do
      let(:n) { -1 }

      it "raises an error" do
        expect {described_class.first(n)}.to raise_error("Number of primes needs to be a positive number")
      end
    end

    describe "when given a Float number" do
      let(:n) { 120.11 }

      it "raises an error" do
        expect {described_class.first(n)}.to raise_error("Number of primes should be an integer")
      end
    end

    describe "for n = 10" do
      let(:n) { 10 }

      it "should return the correct result" do
        expect(described_class.first(n)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
      end
    end

    describe "for n = 20" do
      let(:n) { 20 }

      it "should return the correct result" do
        expect(described_class.first(n)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71])
      end
    end
  end
end
