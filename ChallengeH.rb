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
