require 'pi_piper'

pin_23 = PiPiper::Pin.new :pin => 23, :direction => :out
pin_24 = PiPiper::Pin.new :pin => 24, :direction => :out
pin_16 = PiPiper::Pin.new :pin => 16, :direction => :out

loop do
  pin_16.on
  pin_23.off
  pin_24.off
  sleep 0.5
  pin_16.off
  pin_23.on
  pin_24.off
  sleep 0.5
  pin_16.off
  pin_23.off
  pin_24.on
  sleep 0.5
end
