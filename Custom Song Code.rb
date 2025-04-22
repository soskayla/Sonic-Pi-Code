use_bpm 125

#Pink+White

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


