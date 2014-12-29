#
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
# Copyright (c) 2014, Christopher Aue <mail@christopheraue.net>
#
# This file is part of the ruby xlib gem. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this distribution and at
# http://github.com/christopheraue/ruby-xlib.
#

class Xlib::XRRPropertyInfo < FFI::Struct
  layout \
    :pending,    :Bool,
    :range,      :Bool,
    :immutable,  :Bool,
    :num_values, :int,
    :values,     :pointer
end
