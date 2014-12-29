#
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

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