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

module X11
  RANDR_NAME = 'RANDR'
  RANDR_MAJOR = 1
  RANDR_MINOR = 4

  RRNumberErrors = 4
  RRNumberEvents = 2
  RRNumberRequests = 42

  X_RRQueryVersion = 0
  # we skip 1 to make old clients fail pretty immediately
  X_RROldGetScreenInfo = 1
  X_RR1_0SetScreenConfig = 2
  # V1.0 apps share the same set screen config request id
  X_RRSetScreenConfig = 2
  X_RROldScreenChangeSelectInput = 3
  # 3 used to be ScreenChangeSelectInput; deprecated
  X_RRSelectInput = 4
  X_RRGetScreenInfo = 5

  # V1.2 additions
  X_RRGetScreenSizeRange = 6
  X_RRSetScreenSize = 7
  X_RRGetScreenResources = 8
  X_RRGetOutputInfo = 9
  X_RRListOutputProperties = 10
  X_RRQueryOutputProperty = 11
  X_RRConfigureOutputProperty = 12
  X_RRChangeOutputProperty = 13
  X_RRDeleteOutputProperty = 14
  X_RRGetOutputProperty = 15
  X_RRCreateMode = 16
  X_RRDestroyMode = 17
  X_RRAddOutputMode = 18
  X_RRDeleteOutputMode = 19
  X_RRGetCrtcInfo = 20
  X_RRSetCrtcConfig = 21
  X_RRGetCrtcGammaSize = 22
  X_RRGetCrtcGamma = 23
  X_RRSetCrtcGamma = 24

  # V1.3 additions
  X_RRGetScreenResourcesCurrent = 25
  X_RRSetCrtcTransform = 26
  X_RRGetCrtcTransform = 27
  X_RRGetPanning = 28
  X_RRSetPanning = 29
  X_RRSetOutputPrimary = 30
  X_RRGetOutputPrimary = 31

  RRTransformUnit = 2**0
  RRTransformScaleUp = 2**1
  RRTransformScaleDown = 2**2
  RRTransformProjective = 2**3

  # v1.4
  X_RRGetProviders = 32
  X_RRGetProviderInfo = 33
  X_RRSetProviderOffloadSink = 34
  X_RRSetProviderOutputSource = 35
  X_RRListProviderProperties = 36
  X_RRQueryProviderProperty = 37
  X_RRConfigureProviderProperty = 38
  X_RRChangeProviderProperty = 39
  X_RRDeleteProviderProperty = 40
  X_RRGetProviderProperty = 41

  # Event selection bits
  RRScreenChangeNotifyMask = 2**0
  # V1.2 additions
  RRCrtcChangeNotifyMask = 2**1
  RROutputChangeNotifyMask = 2**2
  RROutputPropertyNotifyMask = 2**3
  # V1.4 additions
  RRProviderChangeNotifyMask = 2**4
  RRProviderPropertyNotifyMask = 2**5
  RRResourceChangeNotifyMask = 2**6

  # Event codes
  RRScreenChangeNotify = 0
  # V1.2 additions
  RRNotify = 1
  # RRNotify Subcodes
   RRNotify_CrtcChange = 0
   RRNotify_OutputChange = 1
   RRNotify_OutputProperty = 2
   RRNotify_ProviderChange = 3
   RRNotify_ProviderProperty = 4
   RRNotify_ResourceChange = 5
  # used in the rotation field; rotation and reflection in 0.1 proto.
  RR_Rotate_0 = 1
  RR_Rotate_90 = 2
  RR_Rotate_180 = 4
  RR_Rotate_270 = 8

  # new in 1.0 protocol, to allow reflection of screen

  RR_Reflect_X = 16
  RR_Reflect_Y = 32

  RRSetConfigSuccess = 0
  RRSetConfigInvalidConfigTime = 1
  RRSetConfigInvalidTime = 2
  RRSetConfigFailed = 3

  # new in 1.2 protocol

  RR_HSyncPositive = 0x00000001
  RR_HSyncNegative = 0x00000002
  RR_VSyncPositive = 0x00000004
  RR_VSyncNegative = 0x00000008
  RR_Interlace = 0x00000010
  RR_DoubleScan = 0x00000020
  RR_CSync = 0x00000040
  RR_CSyncPositive = 0x00000080
  RR_CSyncNegative = 0x00000100
  RR_HSkewPresent = 0x00000200
  RR_BCast = 0x00000400
  RR_PixelMultiplex = 0x00000800
  RR_DoubleClock = 0x00001000
  RR_ClockDivideBy2 = 0x00002000

  RR_Connected = 0
  RR_Disconnected = 1
  RR_UnknownConnection = 2

  BadRROutput = 0
  BadRRCrtc = 1
  BadRRMode = 2
  BadRRProvider = 3

  # Conventional RandR output properties

  RR_PROPERTY_BACKLIGHT = 'Backlight'
  RR_PROPERTY_RANDR_EDID = 'EDID'
  RR_PROPERTY_SIGNAL_FORMAT = 'SignalFormat'
  RR_PROPERTY_SIGNAL_PROPERTIES = 'SignalProperties'
  RR_PROPERTY_CONNECTOR_TYPE = 'ConnectorType'
  RR_PROPERTY_CONNECTOR_NUMBER = 'ConnectorNumber'
  RR_PROPERTY_COMPATIBILITY_LIST = 'CompatibilityList'
  RR_PROPERTY_CLONE_LIST = 'CloneList'
  RR_PROPERTY_BORDER = 'Border'
  RR_PROPERTY_BORDER_DIMENSIONS = 'BorderDimensions'

  # roles this device can carry out
  RR_Capability_None = 0
  RR_Capability_SourceOutput = 1
  RR_Capability_SinkOutput = 2
  RR_Capability_SourceOffload = 4
  RR_Capability_SinkOffload = 8

end