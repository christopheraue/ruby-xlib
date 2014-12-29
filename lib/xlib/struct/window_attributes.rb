#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::WindowAttributes < FFI::Struct
  layout \
    :x,                     :int,
    :y,                     :int,
    :width,                 :int,
    :height,                :int,
    :border_width,          :int,
    :depth,                 :int,
    :visual,                :pointer,
    :root,                  :Window,
    :class,                 :int,
    :bit_gravity,           :int,
    :win_gravity,           :int,
    :backing_store,         :int,
    :backing_planes,        :ulong,
    :backing_pixel,         :ulong,
    :save_under,            :Bool,
    :colormap,              :Colormap,
    :map_installed,         :Bool,
    :map_state,             :int,
    :all_event_masks,       :long,
    :your_event_masks,      :long,
    :do_not_propagate_mask, :long,
    :override_redirect,     :Bool,
    :screen,                :pointer
end
