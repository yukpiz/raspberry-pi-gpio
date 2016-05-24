require 'pi_piper'

pins = {
  :pin_20 => PiPiper::Pin.new(:pin => 20, :direction => :out),
  :pin_21 => PiPiper::Pin.new(:pin => 21, :direction => :out),
  :pin_22 => PiPiper::Pin.new(:pin => 22, :direction => :out),
  :pin_23 => PiPiper::Pin.new(:pin => 23, :direction => :out),
  :pin_24 => PiPiper::Pin.new(:pin => 24, :direction => :out),
  :pin_25 => PiPiper::Pin.new(:pin => 25, :direction => :out),
  :pin_26 => PiPiper::Pin.new(:pin => 26, :direction => :out),
  :pin_27 => PiPiper::Pin.new(:pin => 27, :direction => :out),
}

def clear(pins)
  pins[:pin_20].off
  pins[:pin_21].off
  pins[:pin_22].off
  pins[:pin_23].off
  pins[:pin_24].off
  pins[:pin_25].off
  pins[:pin_26].off
  pins[:pin_27].off
end

def number0(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
end

def number1(pins)
  clear(pins)
  pins[:pin_25].on
  pins[:pin_26].on
end

def number2(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_22].on
  pins[:pin_24].on
  pins[:pin_25].on
end

def number3(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_22].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
end

def number4(pins)
  clear(pins)
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_25].on
  pins[:pin_26].on
end

def number5(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_26].on
end

def number6(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_26].on
end

def number7(pins)
  clear(pins)
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
end

def number8(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
end

def boom(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
  pins[:pin_27].on
  sleep 0.5
  clear(pins)
  sleep 0.5
  pins[:pin_20].on
  pins[:pin_21].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
  pins[:pin_27].on
  sleep 0.5
  clear(pins)
  sleep 1
end

def number9(pins)
  clear(pins)
  pins[:pin_20].on
  pins[:pin_22].on
  pins[:pin_23].on
  pins[:pin_24].on
  pins[:pin_25].on
  pins[:pin_26].on
end

loop do
  number9(pins)
  sleep 1
  number8(pins)
  sleep 1
  number7(pins)
  sleep 1
  number6(pins)
  sleep 1
  number5(pins)
  sleep 1
  number4(pins)
  sleep 1
  number3(pins)
  sleep 1
  number2(pins)
  sleep 1
  number1(pins)
  sleep 1
  number0(pins)
  sleep 1
  boom(pins)
end
