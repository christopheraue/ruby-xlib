#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module Xlib

attach_function :XRRQueryExtension, [:pointer, :pointer, :pointer], :Bool
attach_function :XRRQueryVersion, [:pointer, :pointer, :pointer], :Status

attach_function :XRRGetScreenInfo, [:pointer, :Window], :pointer
attach_function :XRRFreeScreenConfigInfo, [:pointer], :void
attach_function :XRRSetScreenConfig, [:pointer, :pointer, :Drawable, :int, :Rotation, :Time], :Status
attach_function :XRRSetScreenConfigAndRate, [:pointer, :pointer, :Drawable, :int, :Rotation, :short, :Time], :Status

attach_function :XRRConfigRotations, [:pointer, :pointer], :Rotation
attach_function :XRRConfigTimes, [:pointer, :pointer], :Time
attach_function :XRRConfigSizes, [:pointer, :pointer], :pointer
attach_function :XRRConfigRates, [:pointer, :int, :pointer], :pointer

attach_function :XRRConfigCurrentConfiguration, [:pointer, :pointer], :SizeID
attach_function :XRRConfigCurrentRate, [:pointer], :short

attach_function :XRRRootToScreen, [:pointer, :Window], :int

attach_function :XRRSelectInput, [:pointer, :Window, :int], :void

attach_function :XRRRotations, [:pointer, :int, :pointer], :Rotation
attach_function :XRRSizes, [:pointer, :int, :pointer], :pointer
attach_function :XRRRates, [:pointer, :int, :int, :pointer], :pointer
attach_function :XRRTimes, [:pointer, :int, :pointer], :Time

# 1.2 additions
attach_function :XRRGetScreenSizeRange, [:pointer, :Window, :pointer, :pointer, :pointer, :pointer], :Status
attach_function :XRRSetScreenSize, [:pointer, :Window, :int, :int, :int, :int], :void

attach_function :XRRGetScreenResources, [:pointer, :Window], :pointer
attach_function :XRRFreeScreenResources, [:pointer], :void

attach_function :XRRGetOutputInfo, [:pointer, :pointer, :RROutput], :pointer
attach_function :XRRFreeOutputInfo, [:pointer], :void

attach_function :XRRListOutputProperties, [:pointer, :RROutput, :pointer], :pointer
attach_function :XRRQueryOutputProperty, [:pointer, :RROutput, :Atom], :pointer
attach_function :XRRConfigureOutputProperty, [:pointer, :RROutput, :Atom, :Bool, :Bool, :int, :pointer], :void
attach_function :XRRChangeOutputProperty, [:pointer, :RROutput, :Atom, :Atom, :int, :int, :pointer, :int], :void
attach_function :XRRDeleteOutputProperty, [:pointer, :RROutput, :Atom], :void
attach_function :XRRGetOutputProperty, [:pointer, :RROutput, :Atom, :long, :long, :Bool, :Bool, :Atom, :pointer, :pointer, :pointer, :pointer, :pointer], :int

attach_function :XRRAllocModeInfo, [:pointer, :int], :pointer
attach_function :XRRCreateMode, [:pointer, :Window, :pointer], :RRMode
attach_function :XRRDestroyMode, [:pointer, :RRMode], :void
attach_function :XRRAddOutputMode, [:pointer, :RROutput, :RRMode], :void
attach_function :XRRDeleteOutputMode, [:pointer, :RROutput, :RRMode], :void
attach_function :XRRFreeModeInfo, [:pointer], :void

attach_function :XRRGetCrtcInfo, [:pointer, :pointer, :RRCrtc], :pointer
attach_function :XRRFreeCrtcInfo, [:pointer], :void
attach_function :XRRSetCrtcConfig, [:pointer, :pointer, :RRCrtc, :Time, :int, :int, :RRMode, :Rotation, :pointer, :int], :Status

attach_function :XRRGetCrtcGammaSize, [:pointer, :RRCrtc], :int
attach_function :XRRGetCrtcGamma, [:pointer, :RRCrtc], :pointer
attach_function :XRRAllocGamma, [:int], :pointer
attach_function :XRRSetCrtcGamma, [:pointer, :RRCrtc, :pointer], :void
attach_function :XRRFreeGamma, [:pointer], :void

# 1.3 additions
attach_function :XRRGetScreenResourcesCurrent, [:pointer, :Window], :pointer
attach_function :XRRUpdateConfiguration, [:pointer], :int

attach_function :XRRSetCrtcTransform, [:pointer, :RRCrtc, :pointer, :string, :pointer, :int], :void
attach_function :XRRGetCrtcTransform, [:pointer, :RRCrtc, :pointer], :Status

attach_function :XRRGetPanning, [:pointer, :pointer, :RRCrtc], :pointer
attach_function :XRRFreePanning, [:pointer], :void
attach_function :XRRSetPanning, [:pointer, :pointer, :RRCrtc, :pointer], :Status

attach_function :XRRSetOutputPrimary, [:pointer, :Window, :RROutput], :void
attach_function :XRRGetOutputPrimary, [:pointer, :Window], :RROutput

attach_function :XRRGetProviderResources, [:pointer, :Window], :pointer
attach_function :XRRFreeProviderResources, [:pointer], :void

attach_function :XRRGetProviderInfo, [:pointer, :pointer, :RRProvider], :pointer
attach_function :XRRFreeProviderInfo, [:pointer], :void

attach_function :XRRSetProviderOutputSource, [:pointer, :XID, :XID], :int
attach_function :XRRSetProviderOffloadSink, [:pointer, :XID, :XID], :int

attach_function :XRRListProviderProperties, [:pointer, :RRProvider, :int], :pointer
attach_function :XRRQueryProviderProperty, [:pointer, :RRProvider, :Atom], :pointer
attach_function :XRRConfigureProviderProperty, [:pointer, :RRProvider, :Atom, :Bool, :Bool, :int, :long], :void
attach_function :XRRChangeProviderProperty, [:pointer, :RRProvider, :Atom, :Atom, :int, :int, :pointer, :int], :void
attach_function :XRRDeleteProviderProperty, [:pointer, :RRProvider, :Atom], :void
attach_function :XRRGetProviderProperty, [:pointer, :RRProvider, :Atom, :long, :long, :Bool, :Bool, :Atom, :pointer, :pointer, :pointer, :pointer, :pointer], :int

end
