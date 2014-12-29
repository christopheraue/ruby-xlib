#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRenderPictureAttributes < FFI::Struct
  layout \
    :repeat,             :int,
    :alpha_map,          :Picture,
    :alpha_x_origin,     :int,
    :alpha_y_origin,     :int,
    :clip_x_origin,      :int,
    :clip_y_origin,      :int,
    :clip_mask,          :Pixmap,
    :graphics_exposures, :Bool,
    :subwindow_mode,     :int,
    :poly_edge,          :int,
    :poly_mode,          :int,
    :dither,             :Atom,
    :component_alpha,    :Bool
end
