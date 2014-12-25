Gem::Specification.new do |s|
  s.name         = 'xlib'
  s.version      = '0.0.1'
  s.author       = 'Christopher Aue'
  s.email        = 'mail@christopheraue.net'
  s.platform     = Gem::Platform::RUBY
  s.summary      = 'Interface to Xlib and its Xrender and Xrandr extensions'
  s.files        = Dir.glob('lib/**/*.rb')
  s.require_path = 'lib'

  s.add_dependency 'ffi'
end
