#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

module FFI
  typedef :double, :XDouble
  typedef :int,    :XFixed
end

require_relative 'struct/render_direct_format'
require_relative 'struct/render_pict_format'
require_relative 'struct/render_picture_attributes'
require_relative 'struct/render_color'
require_relative 'struct/glyph_info'
require_relative 'struct/glyph_elt8'
require_relative 'struct/glyph_elt16'
require_relative 'struct/glyph_elt32'
require_relative 'struct/point_double'
require_relative 'struct/point_fixed'
require_relative 'struct/line_fixed'
require_relative 'struct/triangle'
require_relative 'struct/circle'
require_relative 'struct/trapezoid'
require_relative 'struct/transform'
require_relative 'struct/filters'
require_relative 'struct/index_value'
require_relative 'struct/anim_cursor'
require_relative 'struct/span_fix'
require_relative 'struct/trap'
require_relative 'struct/linear_gradient'
require_relative 'struct/radial_gradient'
require_relative 'struct/conical_gradient'
