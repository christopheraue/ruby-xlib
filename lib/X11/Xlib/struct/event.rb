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

class X11::XEvent < FFI::Union
  layout \
    :type,              :int,
    :xany,              X11::XAnyEvent,
    :xkey,              X11::XKeyEvent,
    :xbutton,           X11::XButtonEvent,
    :xmotion,           X11::XMotionEvent,
    :xcrossing,         X11::XCrossingEvent,
    :xfocus,            X11::XFocusChangeEvent,
    :xexpose,           X11::XExposeEvent,
    :xgraphicsexpose,   X11::XGraphicsExposeEvent,
    :xnoexpose,         X11::XNoExposeEvent,
    :xvisibility,       X11::XVisibilityEvent,
    :xcreatewindow,     X11::XCreateWindowEvent,
    :xdestroywindow,    X11::XDestroyWindowEvent,
    :xunmap,            X11::XUnmapEvent,
    :xmap,              X11::XMapEvent,
    :xmaprequest,       X11::XMapRequestEvent,
    :xreparent,         X11::XReparentEvent,
    :xconfigure,        X11::XConfigureEvent,
    :xgravity,          X11::XGravityEvent,
    :xresizerequest,    X11::XResizeRequestEvent,
    :xconfigurerequest, X11::XConfigureRequestEvent,
    :xcirculate,        X11::XCirculateEvent,
    :xcirculaterequest, X11::XCirculateRequestEvent,
    :xproperty,         X11::XPropertyEvent,
    :xselectionclear,   X11::XSelectionClearEvent,
    :xselectionrequest, X11::XSelectionRequestEvent,
    :xselection,        X11::XSelectionEvent,
    :xcolormap,         X11::XColormapEvent,
    :xclient,           X11::XClientMessageEvent,
    :xmapping,          X11::XMappingEvent,
    :xerror,            X11::XErrorEvent,
    :xkeymap,           X11::XKeymapEvent,
    :xgeneric,          X11::XGenericEvent,
    :xcookie,           X11::XGenericEventCookie,
    :pad,               [:long, 24]
end

