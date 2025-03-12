# Stranger Things Main Theme

Notes = [:c2, :e2, :g2, :b2, :c2, :b2, :g2, :e2,]

use_bpm 160
use_synth :saw

x = 0

live_loop :main_theme do
  with_fx :distortion do
    8.times do
      play(Notes[x])
      x = x + 1
      sleep 0.5
      
    end
    x=0
  end
end

=begin
# Seven Nation Army by The White Stripes

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

notesList = [:e3,:e3,:g3,:e3,:r,:d3,:c3,:b2]
sleepTime = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5,2,2]

i= 0
x = 0

live_loop :white_stripes do
  8.times do
    play (notesList[i])
    i = i + 1
    sleep (sleepTime[x])
    x = x + 1
  end
  x=0
  i=0
end

