#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

require 'xlib'
require_relative 'xrender'

module Xlib
  begin
    ffi_lib 'Xrandr'
    def self.xrandr_available?; true end
  rescue LoadError => e
    def self.xrandr_available?; false end
  end
end

require_relative 'xrandr/types'

if Xlib.xrandr_available?
  require_relative 'xrandr/functions'
end