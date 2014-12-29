Simple 1:1 interface to Xlib for ruby
=====================================

This gem just wraps Xlib including Xrender and Xrandr and makes its interface
available in ruby through ffi. Xlib documentation can be found in its
[manual](http://www.x.org/docs/X11/xlib.pdf). No functions have been renamed
or abstracted away in some objects. It's just the plain Xlib API.

For a lightweight wrapper and a more ruby style access to X11 have a look at
[ruby-xlib-objects](https://github.com/christopheraue/ruby-xlib-objects).

Installation
------------
```
gem install xlib
```

Usage
-----
The API lives in the `Xlib` namespace.

```ruby
display_pointer = Xlib.XOpenDisplay(':0')
display = Xlib::Display.new(display_pointer)

screens = (0..display[:nscreens]-1).map do |number|
  screen_pointer = display[:screens] + number*Xlib::Screen.size
  Xlib::Screen.new(screen_pointer)
end

root_windows = screens.map do |screen|
  Xlib.XRootWindowOfScreen(screen.pointer)
end

root_window_sizes = root_windows.map do |root_win|
  attributes = Xlib::WindowAttributes.new
  Xlib.XGetWindowAttributes(display.pointer, root_win.pointer, attributes.
    pointer)
  { width: attributes[:width], height: attributes[:height] }
end
```