#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRRModeInfo < FFI::Struct
  layout \
    :id,         :RRMode,
    :width,      :uint,
    :height,     :uint,
    :dotClock,   :ulong,
    :hSyncStart, :uint,
    :hSyncEnd,   :uint,
    :hTotal,     :uint,
    :hSkew,      :uint,
    :vSyncStart, :uint,
    :vSyncEnd,   :uint,
    :vTotal,     :uint,
    :name,       :string,
    :nameLength, :uint,
    :modeFlags,  :XRRModeFlags
end
