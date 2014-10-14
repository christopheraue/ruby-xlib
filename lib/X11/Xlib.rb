require 'ffi'

module X11
  module Xlib
    extend FFI::Library
    ffi_lib 'X11'
  end
end

require_relative 'Xlib/constants'
require_relative 'Xlib/types'
require_relative 'Xlib/functions'
