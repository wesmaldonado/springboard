# -*- encoding: utf-8 -*-
require File.expand_path('../lib/springboard/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Grant Rodgers"]
  gem.email         = ["grantr@gmail.com"]
  gem.description   = %q{Run elasticsearch as a gem binary}
  gem.summary       = %q{Packages up elasticsearch in a gem and adds a ruby executable to run it easily with relative config paths.
                         Makes elasticsearch dead simple to develop with.}
  gem.homepage      = "http://github.com/grantr/springboard"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "springboard"
  gem.require_paths = ["lib"]
  gem.version       = Springboard::VERSION
end
