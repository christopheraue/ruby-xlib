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

class X11::Xlib::XEvent < FFI::Union
  layout \
    :type,              :int,
    :xany,              X11::Xlib::XAnyEvent,
    :xkey,              X11::Xlib::XKeyEvent,
    :xbutton,           X11::Xlib::XButtonEvent,
    :xmotion,           X11::Xlib::XMotionEvent,
    :xcrossing,         X11::Xlib::XCrossingEvent,
    :xfocus,            X11::Xlib::XFocusChangeEvent,
    :xexpose,           X11::Xlib::XExposeEvent,
    :xgraphicsexpose,   X11::Xlib::XGraphicsExposeEvent,
    :xnoexpose,         X11::Xlib::XNoExposeEvent,
    :xvisibility,       X11::Xlib::XVisibilityEvent,
    :xcreatewindow,     X11::Xlib::XCreateWindowEvent,
    :xdestroywindow,    X11::Xlib::XDestroyWindowEvent,
    :xunmap,            X11::Xlib::XUnmapEvent,
    :xmap,              X11::Xlib::XMapEvent,
    :xmaprequest,       X11::Xlib::XMapRequestEvent,
    :xreparent,         X11::Xlib::XReparentEvent,
    :xconfigure,        X11::Xlib::XConfigureEvent,
    :xgravity,          X11::Xlib::XGravityEvent,
    :xresizerequest,    X11::Xlib::XResizeRequestEvent,
    :xconfigurerequest, X11::Xlib::XConfigureRequestEvent,
    :xcirculate,        X11::Xlib::XCirculateEvent,
    :xcirculaterequest, X11::Xlib::XCirculateRequestEvent,
    :xproperty,         X11::Xlib::XPropertyEvent,
    :xselectionclear,   X11::Xlib::XSelectionClearEvent,
    :xselectionrequest, X11::Xlib::XSelectionRequestEvent,
    :xselection,        X11::Xlib::XSelectionEvent,
    :xcolormap,         X11::Xlib::XColormapEvent,
    :xclient,           X11::Xlib::XClientMessageEvent,
    :xmapping,          X11::Xlib::XMappingEvent,
    :xerror,            X11::Xlib::XErrorEvent,
    :xkeymap,           X11::Xlib::XKeymapEvent,
    :xgeneric,          X11::Xlib::XGenericEvent,
    :xcookie,           X11::Xlib::XGenericEventCookie,
    :pad,               [:long, 24]
end

