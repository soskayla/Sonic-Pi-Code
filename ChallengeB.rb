use_bpm 168

live_loop :heart do
  use_synth :beep
  play :e1
  sleep 9
end

sleep 4.5

live_loop :things do
  use_synth :hollow
  
  sample :ambi_dark_woosh, amp: 0.5, rate: 1
  
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

sleep 4.5

live_loop :stranger do
  use_synth :hollow
  
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
  
end

sleep 4.5

live_loop :things do
  sample :drum_bass_soft, rate: 1, amp: 0.5
  
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end






