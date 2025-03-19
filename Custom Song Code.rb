use_bpm 120
use_synth :piano

birds = "C:/Users/makayla_washington/Downloads/birds.wav"

live_loop :birds do
  sample birds, amp: 0.1, rate: 0.8
  sleep 16
end
2
live_loop :drums do
  sample :drum_cymbal_soft, amp: 0.1
  sleep 1
  sample :drum_bass_soft, amp: 0.2
  sleep 1
  sample :drum_cymbal_soft, amp: 0.1
  sleep 1
  sample :drum_snare_soft, amp: 0.2
  sleep 1
end


live_loop :chords do
  play :e3, amp: 0.2, release: 4
  sleep 4
  play :d3, amp: 0.2, release: 4
  sleep 4
  play :c3, amp: 0.2, release: 4
  sleep 4
  play :b2, amp: 0.2, release: 4
  sleep 4
end

live_loop :melody do
  play :e4, amp: 0.3, release: 1
  sleep 1
  play :g4, amp: 0.3, release: 1
  sleep 1
  play :b4, amp: 0.3, release: 1
  sleep 1
  play :e5, amp: 0.3, release: 1
  sleep 1
  play :d5, amp: 0.3, release: 1
  sleep 1
  play :b4, amp: 0.3, release: 1
  sleep 1
  play :g4, amp: 0.3, release: 1
  sleep 1
  play :e4, amp: 0.3, release: 1
  sleep 1
end

live_loop :pad do
  use_synth :hollow
  play :e3, amp: 0.1, release: 8
  sleep 8
  play :g3, amp: 0.1, release: 8
  sleep 8
end


sleep 32

live_loop :chords do
  stop
end

live_loop :melody do
  stop
end

live_loop :pad do
  stop
end


sleep 16

live_loop :chords do
  play :e3, amp: 0.2, release: 4
  sleep 4
  play :d3, amp: 0.2, release: 4
  sleep 4
  play :c3, amp: 0.2, release: 4
  sleep 4
  play :b2, amp: 0.2, release: 4
  sleep 4
end

live_loop :melody do
  play :e4, amp: 0.3, release: 1
  sleep 1
  play :g4, amp: 0.3, release: 1
  sleep 1
  play :b4, amp: 0.3, release: 1
  sleep 1
  play :e5, amp: 0.3, release: 1
  sleep 1
  play :d5, amp: 0.3, release: 1
  sleep 1
  play :b4, amp: 0.3, release: 1
  sleep 1
  play :g4, amp: 0.3, release: 1
  sleep 1
  play :e4, amp: 0.3, release: 1
  sleep 1
end

live_loop :pad do
  use_synth :hollow
  play :e3, amp: 0.1, release: 8
  sleep 8
  play :g3, amp: 0.1, release: 8
  sleep 8
end

live_loop :fade_out do
  8.times do |i|
    set_volume! 1.0 - (i * 0.01)
    sleep 2
  end
  stop
end
stop

