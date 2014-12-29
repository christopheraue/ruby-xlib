#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module Xlib

attach_function :XRenderQueryExtension, [:pointer, :pointer, :pointer], :Bool
attach_function :XRenderQueryVersion, [:pointer, :pointer, :pointer], :Status
attach_function :XRenderQueryFormats, [:pointer], :Status
attach_function :XRenderQuerySubpixelOrder, [:pointer, :int], :int
attach_function :XRenderQueryPictIndexValues, [:pointer, :pointer, :pointer], :pointer

attach_function :XRenderSetSubpixelOrder, [:pointer, :int, :int], :Bool

attach_function :XRenderFindVisualFormat, [:pointer, :pointer], :pointer
attach_function :XRenderFindFormat, [:pointer, :ulong, :pointer, :int], :pointer
attach_function :XRenderFindStandardFormat, [:pointer, :int], :pointer

attach_function :XRenderCreatePicture, [:pointer, :Drawable, :pointer, :ulong, :pointer], :Picture
attach_function :XRenderChangePicture, [:pointer, :Picture, :ulong, :pointer], :void
attach_function :XRenderSetPictureClipRectangles, [:pointer, :Picture, :int, :int, :pointer, :int], :void
attach_function :XRenderSetPictureClipRegion, [:pointer, :Picture, :pointer], :void

end
