require_relative './lib/prime_multiplication_table/version'

Gem::Specification.new do |spec|
  spec.name          = 'prime_multiplication_table'
  spec.version       = PrimeMultiplicationTable::VERSION
  spec.authors       = ['Sebastian Coetzee']
  spec.email         = ['mail@sebastiancoetzee.com']

  spec.summary       = 'This gem prints a multiplication of the first N prime numbers'
  spec.description   = ''
  spec.homepage      = 'https://github.com/SebastianCoetzee/prime_multiplication_table'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']
  spec.license = 'MIT'

  spec.add_dependency 'commander', '~> 4.4.0'
  spec.add_dependency 'terminal-table', '~> 1.8.0'

  spec.add_development_dependency 'bundler', '>= 1.14'
  spec.add_development_dependency 'rake', '>= 10.0'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
end
