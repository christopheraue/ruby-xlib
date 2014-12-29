#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

require 'xlib'

module Xlib
  begin
    ffi_lib 'Xrender'
    def self.xrender_available?; true end
  rescue LoadError => e
    def self.xrender_available?; false end
  end
end

require_relative 'xrender/types'

if Xlib.xrender_available?
  require_relative 'xrender/functions'
end