$fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
$tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def sluggish_octupus
    arr = []
    $fishes.each_with_index do |str, i|
        $fishes.each_with_index do |str2, i2|
            arr << str2
        end
    end
    arr[-1]
end


def clever_octopus
    winner = $fishes[0]
    $fishes.each do |oct|
        winner = oct if oct.length > winner.length
    end
    winner
end
# p sluggish_octupus
# p dominant_octopus
# p clever_octopus

def slow_dance(str)
    $tiles_array.each_with_index { |direction, index| return index if str == direction }
end
p slow_dance("up")
p slow_dance("right-down")


