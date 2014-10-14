require_relative 'Xrender'

module X11
  module Xrandr
    extend FFI::Library
    ffi_lib 'Xrandr'
  end
end

require_relative 'Xrandr/types'
require_relative 'Xrandr/functions'
