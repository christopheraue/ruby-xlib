#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRRPanning < FFI::Struct
  layout \
    :timestamp,     :Time,
    :left,          :uint,
    :top,           :uint,
    :width,         :uint,
    :height,        :uint,
    :track_left,    :uint,
    :track_top,     :uint,
    :track_width,   :uint,
    :track_height,  :uint,
    :border_left,   :int,
    :border_top,    :int,
    :border_right,  :int,
    :border_bottom, :int
end
