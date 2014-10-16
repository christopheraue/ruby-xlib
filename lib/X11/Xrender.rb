require_relative 'Xlib'

module X11::Xrender
  extend FFI::Library
  ffi_lib 'Xrender'
end

require_relative 'Xrender/types'
require_relative 'Xrender/functions'
