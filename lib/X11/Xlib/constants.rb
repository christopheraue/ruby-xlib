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
  ANY_PROPERTY_TYPE = 0
  PROPERTY_NEW_VALUE = 0
  PROPERTY_DELETE = 1
  PROP_MODE_REPLACE = 0
  PROP_MODE_PREPEND = 1
  PROP_MODE_APPEND = 2

  MAP_STATE = {
    0 => :IsUnmapped,
    1 => :IsUnviewable,
    2 => :IsViewable
  }

  EVENT_MASK = {
    no_event:              0,
    key_press:             2**0,
    key_release:           2**1,
    button_press:          2**2,
    button_release:        2**3,
    enter_window:          2**4,
    leave_window:          2**5,
    pointer_motion:        2**6,
    pointer_motion_hint:   2**7,
    button1_motion:        2**8,
    button2_motion:        2**9,
    button3_motion:        2**10,
    button4_motion:        2**11,
    button5_motion:        2**12,
    button_motion:         2**13,
    keymap_state:          2**14,
    exposure:              2**15,
    visibility_change:     2**16,
    structure_notify:      2**17,
    resize_redirect:       2**18,
    substructure_notify:   2**19,
    substructure_redirect: 2**20,
    focus_change:          2**21,
    property_change:       2**22,
    colormap_change:       2**23,
    owner_grab_button:     2**24
  }

  # Event names
  EVENT = {
    key_press:          2,
    key_release:        3,
    button_press:       4,
    button_release:     5,
    motion_notify:      6,
    enter_notify:       7,
    leave_notify:       8,
    focus_in:           9,
    focus_out:         10,
    keymap_notify:     11,
    expose:            12,
    graphics_expose:   13,
    no_expose:         14,
    visibility_notify: 15,
    create_notify:     16,
    destroy_notify:    17,
    unmap_notify:      18,
    map_notify:        19,
    map_request:       20,
    reparent_notify:   21,
    configure_notify:  22,
    configure_request: 23,
    gravity_notify:    24,
    resize_request:    25,
    circulate_notify:  26,
    circulate_request: 27,
    property_notify:   28,
    selection_clear:   29,
    selection_request: 30,
    selection_notify:  31,
    colormap_notify:   32,
    client_message:    33,
    mapping_notify:    34,
    generic_event:     35,
    last_event:        36
  }

  EVENT_TO_UNION_MEMBER = {
    EVENT[:key_press]         => :xkey,
    EVENT[:key_release]       => :xkey,
    EVENT[:button_press]      => :xbutton,
    EVENT[:button_release]    => :xbutton,
    EVENT[:motion_notify]     => :xmotion,
    EVENT[:enter_notify]      => :xcrossing,
    EVENT[:leave_notify]      => :xcrossing,
    EVENT[:focus_in]          => :xfocus,
    EVENT[:focus_out]         => :xfocus,
    EVENT[:keymap_notify]     => :xkeymap,
    EVENT[:expose]            => :xexpose,
    EVENT[:graphics_expose]   => :xgraphicsexpose,
    EVENT[:no_expose]         => :xnoexpose,
    EVENT[:visibility_notify] => :xvisibility,
    EVENT[:create_notify]     => :xcreatewindow,
    EVENT[:destroy_notify]    => :xdestroywindow,
    EVENT[:unmap_notify]      => :xunmap,
    EVENT[:map_notify]        => :xmap,
    EVENT[:map_request]       => :xmaprequest,
    EVENT[:reparent_notify]   => :xreparent,
    EVENT[:configure_notify]  => :xconfigure,
    EVENT[:configure_request] => :xconfigurerequest,
    EVENT[:gravity_notify]    => :xgravity,
    EVENT[:resize_request]    => :xresizerequest,
    EVENT[:circulate_notify]  => :xcirculate,
    EVENT[:circulate_request] => :xcirculaterequest,
    EVENT[:property_notify]   => :xproperty,
    EVENT[:selection_clear]   => :xselectionclear,
    EVENT[:selection_request] => :xselectionrequest,
    EVENT[:selection_notify]  => :xselection,
    EVENT[:colormap_notify]   => :xcolormap,
    EVENT[:client_message]    => :xclient,
    EVENT[:mapping_notify]    => :xmapping,
    EVENT[:generic_event]     => :xgeneric
  }
end