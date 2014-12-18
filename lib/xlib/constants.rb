#--
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

module Xlib
  QueuedAlready      = 0
  QueuedAfterReading = 1
  QueuedAfterFlush   = 2

  XNRequiredCharSet             = 'requiredCharSet'
  XNQueryOrientation            = 'queryOrientation'
  XNBaseFontName                = 'baseFontName'
  XNOMAutomatic                 = 'omAutomatic'
  XNMissingCharSet              = 'missingCharSet'
  XNDefaultString               = 'defaultString'
  XNOrientation                 = 'orientation'
  XNDirectionalDependentDrawing = 'directionalDependentDrawing'
  XNContextualDrawing           = 'contextualDrawing'
  XNFontInfo                    = 'fontInfo'

  XIMPreeditArea      = 0x0001
  XIMPreeditCallbacks = 0x0002
  XIMPreeditPosition  = 0x0004
  XIMPreeditNothing   = 0x0008
  XIMPreeditNone      = 0x0010
  XIMStatusArea       = 0x0100
  XIMStatusCallbacks  = 0x0200
  XIMStatusNothing    = 0x0400
  XIMStatusNone       = 0x0800

  XNVaNestedList               = 'XNVaNestedList'
  XNQueryInputStyle            = 'queryInputStyle'
  XNClientWindow               = 'clientWindow'
  XNInputStyle                 = 'inputStyle'
  XNFocusWindow                = 'focusWindow'
  XNResourceName               = 'resourceName'
  XNResourceClass              = 'resourceClass'
  XNGeometryCallback           = 'geometryCallback'
  XNDestroyCallback            = 'destroyCallback'
  XNFilterEvents               = 'filterEvents'
  XNPreeditStartCallback       = 'preeditStartCallback'
  XNPreeditDoneCallback        = 'preeditDoneCallback'
  XNPreeditDrawCallback        = 'preeditDrawCallback'
  XNPreeditCaretCallback       = 'preeditCaretCallback'
  XNPreeditStateNotifyCallback = 'preeditStateNotifyCallback'
  XNPreeditAttributes          = 'preeditAttributes'
  XNStatusStartCallback        = 'statusStartCallback'
  XNStatusDoneCallback         = 'statusDoneCallback'
  XNStatusDrawCallback         = 'statusDrawCallback'
  XNStatusAttributes           = 'statusAttributes'
  XNArea                       = 'area'
  XNAreaNeeded                 = 'areaNeeded'
  XNSpotLocation               = 'spotLocation'
  XNColormap                   = 'colorMap'
  XNStdColormap                = 'stdColorMap'
  XNForeground                 = 'foreground'
  XNBackground                 = 'background'
  XNBackgroundPixmap           = 'backgroundPixmap'
  XNFontSet                    = 'fontSet'
  XNLineSpace                  = 'lineSpace'
  XNCursor                     = 'cursor'
  XNQueryIMValuesList          = 'queryIMValuesList'
  XNQueryICValuesList          = 'queryICValuesList'
  XNVisiblePosition            = 'visiblePosition'
  XNR6PreeditCallback          = 'r6PreeditCallback'
  XNStringConversionCallback   = 'stringConversionCallback'
  XNStringConversion           = 'stringConversion'
  XNResetState                 = 'resetState'
  XNHotKey                     = 'hotKey'
  XNHotKeyState                = 'hotKeyState'
  XNPreeditState               = 'preeditState'
  XNSeparatorofNestedList      = 'separatorofNestedList'

  XBufferOverflow = -1

  XLookupNone     = 1
  XLookupChars    = 2
  XLookupKeySym   = 3
  XLookupBoth     = 4

  XIMReverse           = 1
  XIMUnderline         = (1<<1)
  XIMHighlight         = (1<<2)
  XIMPrimary           = (1<<5)
  XIMSecondary         = (1<<6)
  XIMTertiary          = (1<<7)
  XIMVisibleToForward  = (1<<8)
  XIMVisibleToBackword = (1<<9)
  XIMVisibleToCenter   = (1<<10)

  XIMPreeditUnKnown    = 0
  XIMPreeditEnable     = 1
  XIMPreeditDisable    = (1<<1)

  XIMInitialState      = 1
  XIMPreserveState     = (1<<1)

  XIMStringConversionLeftEdge     = (0x00000001)
  XIMStringConversionRightEdge    = (0x00000002)
  XIMStringConversionTopEdge      = (0x00000004)
  XIMStringConversionBottomEdge   = (0x00000008)
  XIMStringConversionConcealed    = (0x00000010)
  XIMStringConversionWrapped      = (0x00000020)

  XIMStringConversionBuffer       = (0x0001)
  XIMStringConversionLine         = (0x0002)
  XIMStringConversionWord         = (0x0003)
  XIMStringConversionChar         = (0x0004)

  XIMStringConversionSubstitution = (0x0001)
  XIMStringConversionRetrieval    = (0x0002)

  XIMHotKeyStateON                = (0x0001)
  XIMHotKeyStateOFF               = (0x0002)
end