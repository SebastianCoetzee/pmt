require_relative './lib/pmt/version'

Gem::Specification.new do |spec|
  spec.name          = 'pmt'
  spec.version       = Pmt::VERSION
  spec.authors       = ['Sebastian Coetzee']
  spec.email         = ['mail@sebastiancoetzee.com']

  spec.summary       = 'This gem prints a multiplication table of the first N prime numbers'
  spec.description   = ''
  spec.homepage      = 'https://github.com/SebastianCoetzee/pmt'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']
  spec.executables   = ['pmt']
  spec.license = 'MIT'

  spec.add_dependency 'commander', '~> 4.4.0'
  spec.add_dependency 'terminal-table', '~> 1.8.0'

  spec.add_development_dependency 'rspec', '~> 3.7.0'
end
