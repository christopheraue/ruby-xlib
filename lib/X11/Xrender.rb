require_relative 'Xlib'

module X11
  module Xrender
    extend FFI::Library
    ffi_lib 'Xrender'
  end
end

require_relative 'Xrender/types'
require_relative 'Xrender/functions'
