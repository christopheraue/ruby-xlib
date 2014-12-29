#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XTrapezoid < FFI::Struct
  layout \
    :top,    :XFixed,
    :bottom, :XFixed,
    :left,   Xlib::XLineFixed,
    :right,  Xlib::XLineFixed
end
