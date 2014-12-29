#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XEvent < FFI::Union
  layout \
    :type,              :int,
    :xany,              Xlib::XAnyEvent,
    :xkey,              Xlib::XKeyEvent,
    :xbutton,           Xlib::XButtonEvent,
    :xmotion,           Xlib::XMotionEvent,
    :xcrossing,         Xlib::XCrossingEvent,
    :xfocus,            Xlib::XFocusChangeEvent,
    :xexpose,           Xlib::XExposeEvent,
    :xgraphicsexpose,   Xlib::XGraphicsExposeEvent,
    :xnoexpose,         Xlib::XNoExposeEvent,
    :xvisibility,       Xlib::XVisibilityEvent,
    :xcreatewindow,     Xlib::XCreateWindowEvent,
    :xdestroywindow,    Xlib::XDestroyWindowEvent,
    :xunmap,            Xlib::XUnmapEvent,
    :xmap,              Xlib::XMapEvent,
    :xmaprequest,       Xlib::XMapRequestEvent,
    :xreparent,         Xlib::XReparentEvent,
    :xconfigure,        Xlib::XConfigureEvent,
    :xgravity,          Xlib::XGravityEvent,
    :xresizerequest,    Xlib::XResizeRequestEvent,
    :xconfigurerequest, Xlib::XConfigureRequestEvent,
    :xcirculate,        Xlib::XCirculateEvent,
    :xcirculaterequest, Xlib::XCirculateRequestEvent,
    :xproperty,         Xlib::XPropertyEvent,
    :xselectionclear,   Xlib::XSelectionClearEvent,
    :xselectionrequest, Xlib::XSelectionRequestEvent,
    :xselection,        Xlib::XSelectionEvent,
    :xcolormap,         Xlib::XColormapEvent,
    :xclient,           Xlib::XClientMessageEvent,
    :xmapping,          Xlib::XMappingEvent,
    :xerror,            Xlib::XErrorEvent,
    :xkeymap,           Xlib::XKeymapEvent,
    :xgeneric,          Xlib::XGenericEvent,
    :xcookie,           Xlib::XGenericEventCookie,
    :pad,               [:long, 24]
end

