#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module Xlib; module C

module KeySym
  extend FFI::DataConverter

  native_type :XID

  def self.to_native (value, ctx)
    value.to_i
  end

  def self.from_native (value, ctx)
    Xlib::Keysym.new(value)
  end
end

FFI.typedef KeySym, :KeySym

end; end
