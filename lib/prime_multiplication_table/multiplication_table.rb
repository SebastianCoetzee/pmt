require 'terminal-table'

module PrimeMultiplicationTable
  class MultiplicationTable

    attr_reader :number_of_primes

    def initialize(n = 10)
      @number_of_primes = n
    end

    def to_s
      Terminal::Table.new do |t|
        multiplication_table_array.each_with_index do |row, index|
          t << row
          t << :separator unless index == number_of_primes
        end
      end.to_s
    end

    def multiplication_table_array
      @multiplication_table_array ||=
        begin
          primes = Primes.first(number_of_primes)
          table = [[nil] + primes]

          primes.each do |prime|
            row = [prime]
            primes.each do |prime2|
              row << prime * prime2
            end
            table << row
          end

          table
        end
    end
  end
end
