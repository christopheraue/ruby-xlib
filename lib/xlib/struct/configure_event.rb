#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XConfigureEvent < FFI::Struct
  layout \
    :type,              :int,
    :serial,            :ulong,
    :send_event,        :Bool,
    :display,           :pointer,
    :event,             :Window,
    :window,            :Window,
    :x,                 :int,
    :y,                 :int,
    :width,             :int,
    :height,            :int,
    :border_width,      :int,
    :above,             :Window,
    :override_redirect, :Bool
end
