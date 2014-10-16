require_relative 'Xrender'

module X11::Xrandr
  extend FFI::Library
  ffi_lib 'Xrandr'
end

require_relative 'Xrandr/types'
require_relative 'Xrandr/functions'
