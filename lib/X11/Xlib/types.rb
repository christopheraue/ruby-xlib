module Bool
  extend FFI::DataConverter

  native_type :int

  def self.to_native (value, ctx)
    value ? 1 : 0
  end

  def self.from_native (value, ctx)
    !value.zero?
  end
end

module FFI
  typedef Bool,   :Bool
  typedef :int,   :Status
  typedef :ulong, :Atom
  typedef :ulong, :FSID
  typedef :ulong, :XID
  typedef :ulong, :Mask
  typedef :ulong, :VisualID
  typedef :ulong, :Time
  typedef :XID,   :Window
  typedef :XID,   :Drawable
  typedef :XID,   :Font
  typedef :XID,   :Pixmap
  typedef :XID,   :Cursor
  typedef :XID,   :Colormap
  typedef :XID,   :GC
  typedef :XID,   :GContext
  typedef :XID,   :KeySym
  typedef :uchar, :KeyCode
end

require_relative 'struct/display'
require_relative 'struct/gc'
require_relative 'struct/gc_values'
require_relative 'struct/screen'
require_relative 'struct/window_attributes'
require_relative 'struct/visual'
require_relative 'struct/key_sym'
require_relative 'struct/point'

require_relative 'struct/any_event'
require_relative 'struct/key_event'
require_relative 'struct/button_event'
require_relative 'struct/motion_event'
require_relative 'struct/crossing_event'
require_relative 'struct/focus_change_event'
require_relative 'struct/expose_event'
require_relative 'struct/graphics_expose_event'
require_relative 'struct/no_expose_event'
require_relative 'struct/visibility_event'
require_relative 'struct/create_window_event'
require_relative 'struct/destroy_window_event'
require_relative 'struct/unmap_event'
require_relative 'struct/map_event'
require_relative 'struct/map_request_event'
require_relative 'struct/reparent_event'
require_relative 'struct/configure_event'
require_relative 'struct/gravity_event'
require_relative 'struct/resize_request_event'
require_relative 'struct/configure_request_event'
require_relative 'struct/circulate_event'
require_relative 'struct/circulate_request_event'
require_relative 'struct/property_event'
require_relative 'struct/selection_clear_event'
require_relative 'struct/selection_request_event'
require_relative 'struct/selection_event'
require_relative 'struct/colormap_event'
require_relative 'struct/client_message_event'
require_relative 'struct/mapping_event'
require_relative 'struct/error_event'
require_relative 'struct/keymap_event'
require_relative 'struct/generic_event'
require_relative 'struct/generic_event_cookie'
require_relative 'struct/event'
