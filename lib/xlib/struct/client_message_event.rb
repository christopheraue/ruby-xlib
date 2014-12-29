#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XClientMessageEvent < FFI::Struct
  class Data < FFI::Union
    layout \
      :b, [:char, 20],
      :s, [:short, 10],
      :l, [:long, 5]
  end

  layout \
    :type,         :int,
    :serial,       :ulong,
    :send_event,   :Bool,
    :display,      :pointer,
    :window,       :Window,
    :message_type, :Atom,
    :format,       :int,
    :data,         Data
end
