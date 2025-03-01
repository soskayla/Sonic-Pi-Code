use_bpm 160
use_synth :piano

bird = "C:/Users/makayla_washington/Downloads/birds.wav"

define :chords do
  play :b3, sustain: 2, amp: 0.2
  play :e4, sustain: 2, amp: 0.2
  play :g4, sustain: 2, amp: 0.2
  sleep 2
  play :a3, sustain: 2, amp: 0.2
  play :c4, sustain: 2, amp: 0.2
  play :e4, sustain: 2, amp: 0.2
  sleep 2
  play :g3, sustain: 2, amp: 0.2
  play :b3, sustain: 2, amp: 0.2
  play :e4, sustain: 2, amp: 0.2
  sleep 2
  play :a3, sustain: 2, amp: 0.2
  play :c4, sustain: 2, amp: 0.2
  play :e4, sustain: 2, amp: 0.2
  sleep 2
end

live_loop :birds do
  sample bird, amp: 0.2
  sleep 16
end

sleep 4

live_loop :chords_loop do
  chords
end

sleep 4

live_loop :melody do
  play :e4, sustain: 1, amp: 0.2
  sleep 0.5
  play :g4, sustain: 1, amp: 0.2
  sleep 0.5
  play :b4, sustain: 1, amp: 0.2
  sleep 0.5
  play :e5, sustain: 1, amp: 0.2
  sleep 1
  sleep 2
  play :d5, sustain: 1, amp: 0.2
  sleep 0.5
  play :b4, sustain: 1, amp: 0.2
  sleep 0.5
  play :g4, sustain: 1, amp: 0.2
  sleep 0.5
  play :e4, sustain: 1, amp: 0.2
  sleep 1
  sleep 2
end

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

sleep 32

live_loop :ending do
  stop
  sleep 2
  play :b3, sustain: 4, amp: 0.3
  play :e4, sustain: 4, amp: 0.3
  play :g4, sustain: 4, amp: 0.3
  sleep 4
  stop
end







