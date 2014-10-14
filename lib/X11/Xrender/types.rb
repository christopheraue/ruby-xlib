#--
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
#    1. Redistributions of source code must retain the above copyright notice, this list of
#       conditions and the following disclaimer.
#
#    2. Redistributions in binary form must reproduce the above copyright notice, this list
#       of conditions and the following disclaimer in the documentation and/or other materials
#       provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY meh ''AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL meh OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# The views and conclusions contained in the software and documentation are those of the
# authors and should not be interpreted as representing official policies, either expressed
# or implied.
#++

module FFI
  typedef :int,    :XFixed
  typedef :double, :XDouble
  typedef :XID,    :Glyph
  typedef :XID,    :GlyphSet
  typedef :XID,    :Picture
  typedef :XID,    :PictFormat
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
