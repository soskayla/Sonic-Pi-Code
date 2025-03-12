use_bpm 150
use_synth :piano

#pink + white




define :changeNotesnSleep do |note|
  play note
end

bird = "C:/Users/makayla_washington/Downloads/birds.wav"

define :chords do
  play :e4, sustain: 4, amp: 0.09, sustain: 4
  sleep 1
  play :e4, sustain: 4, amp: 0.09, sustain: 4
  sleep 1
  play :e4, sustain: 4, amp: 0.09, sustain: 4
  sleep 1
  play :e4, sustain: 4, amp: 0.09, sustain: 4
  sleep 1
  
end

live_loop :birds do
  sample bird, amp: 0.01
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


sleep 4

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

stop


