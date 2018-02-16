# Since these are essentially just functions that don't manage any state, there
# is no need to instantiate an object from a class. Using module methods instead.
module PrimeMultiplicationTable
  module Primes
    def self.first(n)
      raise "Number of primes should be an integer" unless n.is_a? Integer
      raise "Number of primes needs to be a positive number" if n < 1

      counter = 2
      number_of_primes_found = 0
      primes = []

      while number_of_primes_found < n
        if is_prime_number(counter)
          primes << counter
          number_of_primes_found += 1
        end
        counter += 1
      end

      primes
    end

    def self.is_prime_number(num)
      return true if num > 1 && num < 4
      sqrt = Math.sqrt(num).to_i
      (2..sqrt).each do |diviser|
        if num % diviser == 0
          return false
        end
      end
      true
    end
  end
end
