#--
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyleft Christopher Aue. [http://christopheraue.net | mail@christopheraue.net]
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

module X11

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
