=begin

Functions are great for when the pattern of notes (sleeps) and the actual notes are exactly the same.

Parameterized functions are great for when:
a. the pattern of notes is the same but the actual notes are different!
b. two chunks of code are almost identical but have a few slight differences!

YOUR TASK: Use a parameterized function to optimize the code below.


=end

use_bpm 120
use_synth :chiplead

define :twoNotes do |note1, note2|
  play note1
  play note2
  sleep 0.5
end

# MEASURE 1 ---------------------------
2.times do
  twoNotes :a4, :a5
end

twoNotes :c5, :c6

twoNotes :a4, :a5

twoNotes :d5, :d6

twoNotes :a4, :a5

twoNotes :e5, :e6


twoNotes :d5, :d6



# MEASURE 2 ---------------------------
2.times do
  twoNotes :c5, :c6
end

twoNotes :e5, :e6

twoNotes :c5, :c6

twoNotes :g5, :g6

twoNotes :c4, :c5

twoNotes :e5, :e6

twoNotes :c4, :c5


# MEASURE 3 ---------------------------
2.times do
  twoNotes :g4, :g5
end

twoNotes :b4, :b5

twoNotes :g4, :g5

twoNotes :c5, :c6

twoNotes :g4, :g5

twoNotes :c5, :c6

twoNotes :d5, :d6


# MEASURE 4 ---------------------------
2.times do
  twoNotes :f4, :f5
end

twoNotes :a4, :a5

twoNotes :f4, :f5

twoNotes :c5, :c6

twoNotes :f4, :f5

twoNotes :c5, :c6

twoNotes :b4, :b5
