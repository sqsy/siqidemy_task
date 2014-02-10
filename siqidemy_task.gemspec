# -*- encoding: utf-8 -*-
require File.expand_path('../lib/siqidemy_task/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kevin Hua"]
  gem.email         = ["siqishuyuan@gmail.com"]
  gem.description   = %q{This gem add a Task archetype to siqidemy that can be closed}
  gem.summary       = %q{Originated by Robin Ward, revised by Kevin Hua}
  gem.homepage      = "https://github.com/sqsy/siqidemy_task"

  # when this is extracted comment it back in, prd has no .git 
  gem.files         = Dir['README*','LICENSE','lib/**/*.rb']

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "siqidemy_task"
  gem.require_paths = ["lib"]
  gem.version       = SiqidemyTask::VERSION
end
