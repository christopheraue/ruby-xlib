#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRROutputInfo < FFI::Struct
  layout \
    :timestamp,      :Time,
    :crtc,           :RRCrtc,
    :name,           :string,
    :nameLen,        :int,
    :mm_width,       :ulong,
    :mm_height,      :ulong,
    :connection,     :Connection,
    :subpixel_order, :SubpixelOrder,
    :ncrtc,          :int,
    :crtcs,          :pointer,
    :nclone,         :int,
    :clones,         :pointer,
    :nmode,          :int,
    :npreferred,     :int,
    :modes,          :pointer
end
