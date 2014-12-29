Gem::Specification.new do |s|
  s.name          = 'xlib'
  s.version       = '1.0.0'
  s.license       = 'BSD 2-clause'

  s.summary       = 'Interface to Xlib and its Xrender and Xrandr extensions'
  s.description   = 'Speak with X11 using ruby.'

  s.authors       = ['Christopher Aue']
  s.email         = 'mail@christopheraue.net'
  s.homepage      = 'https://github.com/christopheraue/ruby-xlib'

  s.files         = Dir.glob('lib/**/*.rb')
  s.require_paths = ['lib']

  s.add_runtime_dependency 'ffi', '~> 1.9'
end
