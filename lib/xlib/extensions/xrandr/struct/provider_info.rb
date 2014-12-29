#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRRProviderInfo < FFI::Struct
  layout \
    :capabilities,          :uint,
    :ncrtcs,                :int,
    :crtcs,                 :pointer,
    :noutputs,              :int,
    :outputs,               :pointer,
    :name,                  :pointer,
    :nassociatedproviders,  :int,
    :associated_providers,  :pointer,
    :associated_capability, :uint,
    :nameLen,               :int
end
