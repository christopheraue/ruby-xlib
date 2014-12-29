#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRRScreenResources < FFI::Struct
  layout \
    :timestamp,       :Time,
    :configTimestamp, :Time,
    :ncrtc,           :int,
    :crtcs,           :pointer,
    :noutput,         :int,
    :outputs,         :pointer,
    :nmode,           :int,
    :modes,           :pointer
end
