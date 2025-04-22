use_bpm 125

#Pink+White Remix

birds = "C:/Users/makayla_washington/Downloads/birds.wav"

notes = [
  {
    rh: [:b4, :r, :g4, :e4, :r, :a4, :f4, :g4],
    lh: [:c3, :r, :e3, :r, :g3, :r, :b3, :r]
  },
  {
    rh: [:f4, :r, :d4, :e4, :r, :e4, :r, :e4],
    lh: [:c3, :r, :e3, :r, :g3, :r, :a3, :r]
  }
]

set :fade_amp, 1.0
set :stop_all, false

define :play_melody do |notes, amp|
  notes.each do |n|
    unless n == :r
      play n, amp: amp, release: 0.8, pan: rrand(-0.5, 0.5)
    end
    sleep 0.5
  end
end

define :play_bass do |notes, amp|
  use_synth :fm
  notes.each do |n|
    unless n == :r
      play n, amp: amp, release: 1.0, cutoff: 90
    end
    sleep 0.5
  end
end

live_loop :birds_loop do
  if get(:stop_all)
    stop
  else
    sample birds, amp: 0.04 * get(:fade_amp), rate: 1.1, pan: rrand(-0.6, 0.6)
    sleep 32
  end
end

sleep 4

live_loop :drums_loop do
  if get(:stop_all)
    stop
  else
    with_fx :level, amp: 0.6 * get(:fade_amp) do
      sample :drum_cymbal_closed, amp: 0.1
      sleep 0.5
      sample :drum_bass_soft, amp: 0.1
      sleep 0.5
      sample :drum_cymbal_closed, amp: 0.1
      sleep 0.5
      sample :drum_snare_soft, amp: 0.1
      sleep 0.5
    end
  end
end

sleep 8

live_loop :melody_loop do
  if get(:stop_all)
    stop
  else
    use_synth :piano
    with_fx :reverb, room: 0.8, mix: 0.5 do
      notes.each do |bar|
        play_melody(bar[:rh], 0.4 * get(:fade_amp))
      end
    end
  end
end

sleep 16

live_loop :bass_loop do
  if get(:stop_all)
    stop
  else
    with_fx :lpf, cutoff: 100 do
      notes.each do |bar|
        play_bass(bar[:lh], 0.3 * get(:fade_amp))
      end
    end
  end
end

live_loop :pad_loop do
  if get(:stop_all)
    stop
  else
    use_synth :hollow
    with_fx :echo, mix: 0.3, phase: 1.2 do
      play chord(:e3, :m7), amp: 0.12 * get(:fade_amp), release: 6
      sleep 8
      play chord(:a3, :m7), amp: 0.12 * get(:fade_amp), release: 6
      sleep 8
    end
  end
end


live_loop :fade_out do
  sleep 60
  
  25.times do |i|
    set :fade_amp, 1.0 - (i * 0.0333)
    sleep 1
  end
  
  
  set :stop_all, true
end

#Good days Remix is here

use_bpm 115

# Sheet music: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0232450
# Song sample: https://youtu.be/EOXixip7iPg?si=uKJv10s6aS4V8TUN

bass1 = "C:/Users/makayla_washington/Documents/Audacity/sample 1.wav"

define :intro do
  use_synth :hollow
  4.times do
    play_chord [:c4, :e4, :g4], amp: 2, release: 4,rate: 2
    sleep 2
  end
end

define :three_notes do |note1, note2, note3|
  use_synth :piano
  play note1, amp: 0.4, sustain: 0.5
  sleep 0.5
  play note2, amp: 0.4, sustain: 0.25
  sleep 0.25
  play note3, amp: 0.4, sustain: 0.25
  sleep 0.25
end

define :fournotes do |note_1, note_2, note_3, note_4|
  use_synth :piano
  sleep 0.25
  play note_1, amp: 0.4, sustain: 0.25
  sleep 0.25
  play note_2, amp: 0.4, sustain: 0.25
  sleep 0.25
  play note_3, amp: 0.4, sustain: 0.25
  sleep 0.25
  play note_4, amp: 0.4, sustain: 0.25
end

define :background_drums do
  drum_sounds = [:bd_haus, :sn_dub]
  
  live_loop :drums do
    drum_sounds.each do |sound|
      sample sound, amp: 0.5
      sleep 1
    end
  end
end


live_loop :intro do
  intro
  stop
end

sleep 8

live_loop :melody do
  with_fx :reverb, mix: 0.4 do
    three_notes :f4,:d4,:f4
    fournotes :c4,:d4,:f4,:c4
    three_notes :g4,:d4,:g4
    fournotes :c4,:d4,:g4,:c4
    three_notes :b4,:c4,:b4
    fournotes :d4,:g4,:b4,:d4
    three_notes :c4,:f4,:c4
    fournotes :d4,:f4,:c4,:d4
    three_notes :g4,:e4,:g4
    fournotes :c4,:e4,:g4,:c4
    three_notes :d5,:g4,:d5
    fournotes :e4,:g4,:d5,:e4
    2.times do
      three_notes :d5,:g4,:d5
      fournotes :e4,:g4,:d5,:e4
    end
  end
end

sleep 16

live_loop :bass do
  sample bass1, rate: 1.5, amp: 0.05
  sleep 0.25
end

background_drums

sleep 60

live_loop :fade_out do
  8.times do |i|
    set_volume! 1.0 - (i * 0.1)
    sleep 2
  end
  set_volume! 0
  stop
end

sleep 50

live_loop :stop_all do
  stop
end


