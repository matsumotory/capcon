require_relative 'mrblib/capcon/version'

MRuby::Gem::Specification.new('capcon') do |spec|
  spec.license = 'MIT'
  spec.author  = 'MRuby Developer'
  spec.summary = 'capcon'
  spec.bins    = ['capcon']
  spec.version = Capcon::VERSION

  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
  spec.add_dependency "mruby-capability", :mgem => "mruby-capability"
  spec.add_dependency "mruby-env", :mgem => "mruby-env"
  spec.add_dependency "mruby-getopts", :mgem => "mruby-getopts"
  spec.add_dependency "mruby-process", :mgem => "mruby-process"
end
