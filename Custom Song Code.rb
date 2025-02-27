use_bpm 160

use_synth :piano

live_loop :melody do
  
  bird = "C:/Users/makayla_washington/Downloads/birds.wav"
  
  live_loop :bird do
    2.times do
      sample bird, amp: 0.1
      sleep 8
    end
  end
  
  
  sleep 4
  
  
  4.times do
    play :b4, sustain: 4
    play :g4, sustain: 4
    play :e4, sustain: 4
    sleep 1
    play :g4, sustain: 4
    sleep 3
  end
  
end

sleep 4

live_loop :measure2 do
  
  
  play :e4, sustain: 4, amp: 0.2, sustain: 2
  sleep 1
  play :e4, sustain: 4, amp: 0.2, sustain: 2
  sleep 1
  play :e4, sustain: 4, amp: 0.2, sustain: 2
  sleep 1
  play :e4, sustain: 4, amp: 0.2, sustain: 2
  sleep 1
  
  
end

sleep 8

live_loop :background do
  
  
  play :c4, amp: 0.2, sustain: 2
  play :e4, amp: 0.2, sustain: 2
  sleep 1
  play :c4, amp: 0.2, sustain: 4
  play :e4, amp: 0.2, sustain: 4
  sleep 1
  play :c4, amp: 0.2, sustain: 4
  play :e4, amp: 0.2, sustain: 4
  sleep 1
  play :c4, amp: 0.2, sustain: 4
  play :e4, amp: 0.2, sustain: 4
  sleep 2
  
end








