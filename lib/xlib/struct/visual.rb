#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::Visual < FFI::Struct
  layout \
    :ext_data,     :pointer,
    :visualid,     :VisualID,
    :class,        :int,
    :read_mask,    :ulong,
    :green_mask,   :ulong,
    :blue_mask,    :ulong,
    :buts_per_rgb, :int,
    :map_entries,  :int
end
