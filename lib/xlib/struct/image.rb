#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XImage < FFI::Struct
  layout \
    :width,            :int,
    :height,           :int,
    :xoffset,          :int,
    :format,           :int,
    :data,             :pointer,
    :byte_order,       :int,
    :bitmap_unit,      :int,
    :bitmap_bit_order, :int,
    :bitmap_pad,       :int,
    :depth,            :int,
    :bytes_per_line,   :int,
    :red_mask,         :ulong,
    :green_mask,       :ulong,
    :blue_mask,        :ulong,
    :obdata,           :pointer,

    :f, Class.new(FFI::Struct) {
      layout \
        :create_image,  :pointer,
        :destroy_image, :pointer,
        :get_pixel,     :pointer,
        :put_pixel,     :pointer,
        :sub_image,     :pointer,
        :add_pixel,     :pointer
    }
end
