#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module FFI
  typedef :ulong, :XID
  typedef :ulong, :Mask
  typedef :ulong, :Atom
  typedef :ulong, :VisualID
  typedef :ulong, :Time
  typedef :XID,   :Window
  typedef :XID,   :Drawable
  typedef :XID,   :Font
  typedef :XID,   :Pixmap
  typedef :XID,   :Cursor
  typedef :XID,   :Colormap
  typedef :XID,   :GContext
  typedef :XID,   :KeySym
  typedef :uchar, :KeyCode
end