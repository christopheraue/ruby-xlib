#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module FFI
  typedef :XID, :RROutput
  typedef :XID, :RRCrtc
  typedef :XID, :RRMode
  typedef :XID, :RRProvider
  typedef :ulong, :XRRModeFlags
end

require_relative 'struct/crtc_change_notify_event'
require_relative 'struct/crtc_gamma'
require_relative 'struct/crtc_info'
require_relative 'struct/crtc_transform_attributes'
require_relative 'struct/mode_info'
require_relative 'struct/notify_event'
require_relative 'struct/output_change_notify_event'
require_relative 'struct/output_info'
require_relative 'struct/output_property_notify_event'
require_relative 'struct/panning'
require_relative 'struct/property_info'
require_relative 'struct/provider_change_notify_event'
require_relative 'struct/provider_info'
require_relative 'struct/provider_property_notify_event'
require_relative 'struct/provider_resources'
require_relative 'struct/resource_change_notify_event'
require_relative 'struct/screen_change_notify_event'
require_relative 'struct/screen_resources'
require_relative 'struct/screen_size'
