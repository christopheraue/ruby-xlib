#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module Xlib
  PictFormatID	      = (1 << 0)
  PictFormatType	    = (1 << 1)
  PictFormatDepth	    = (1 << 2)
  PictFormatRed	      = (1 << 3)
  PictFormatRedMask   = (1 << 4)
  PictFormatGreen	    = (1 << 5)
  PictFormatGreenMask = (1 << 6)
  PictFormatBlue	    = (1 << 7)
  PictFormatBlueMask  = (1 << 8)
  PictFormatAlpha	    = (1 << 9)
  PictFormatAlphaMask = (1 << 10)
  PictFormatColormap  = (1 << 11)
  PictStandardARGB32  = 0
  PictStandardRGB24   = 1
  PictStandardA8	    = 2
  PictStandardA4	    = 3
  PictStandardA1	    = 4
  PictStandardNUM	    = 5
end