#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::Screen < FFI::Struct
  layout \
    :ext_data,        :pointer,
    :display,         :pointer,
    :root,            :Window,
    :width,           :int,
    :height,          :int,
    :mwidth,          :int,
    :mheight,         :int,
    :ndepths,         :int,
    :depths,          :pointer,
    :root_depth,      :int,
    :root_visual,     :pointer,
    :default_gc,      Xlib::GC,
    :cmap,            :Colormap,
    :white_pixel,     :ulong,
    :black_pixel,     :ulong,
    :max_maps,        :int,
    :min_maps,        :int,
    :save_unders,     :Bool,
    :root_input_mask, :long
end
