#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

require 'ffi'

module Xlib
  extend FFI::Library

  begin
    ffi_lib 'X11'
    def self.available?; true end
  rescue LoadError => e
    def self.available?; false end
  end
end

require_relative 'x'
require_relative 'xlib/constants'
require_relative 'xlib/types'
require_relative 'xlib/extensions'

if Xlib.available?
  require_relative 'xlib/functions'
end