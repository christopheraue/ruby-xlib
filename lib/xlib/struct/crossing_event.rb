#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XCrossingEvent < FFI::Struct
  layout \
    :type,        :int,
    :serial,      :ulong,
    :send_event,  :Bool,
    :display,     :pointer,
    :window,      :Window,
    :root,        :Window,
    :subwindow,   :Window,
    :time,        :Time,
    :x,           :int,
    :y,           :int,
    :x_root,      :int,
    :y_root,      :int,
    :mode,        :int,
    :detail,      :int,
    :same_screen, :Bool,
    :focus,       :Bool,
    :state,       :uint
end
