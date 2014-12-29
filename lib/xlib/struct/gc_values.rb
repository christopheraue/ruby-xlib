#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XGCValues < FFI::Struct
  layout \
    :function,           :int,
    :plane_mask,         :ulong,
    :foreground,         :ulong,
    :background,         :ulong,
    :line_width,         :int,
    :line_style,         :int,
    :cap_style,          :int,
    :join_style,         :int,
    :fill_style,         :int,
    :fill_rule,          :int,
    :arc_mode,           :int,
    :tile,               :Pixmap,
    :stipple,            :Pixmap,
    :ts_x_origin,        :int,
    :ts_y_origin,        :int,
    :font,               :Font,
    :subwindow_mode,     :int,
    :graphics_exposures, :Bool,
    :clip_x_origin,      :int,
    :clip_y_origin,      :int,
    :clip_mask,          :Pixmap,
    :dash_offset,        :int,
    :dashes,             :char
end
