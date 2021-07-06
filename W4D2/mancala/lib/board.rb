class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_with_index { |cup, i| 4.times { cup << :stone } if i != 6 && i != 13 }
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side1 = @cups[0..6]
    side2 = @cups[7..12]
    return true if side1.all? { |ele| ele.empty? } || side2.all? { |ele2| ele2.empty? }
    return false
  end

  def winner
    side1 = @cups[6].count
    side2 = @cups[13].count
    side1 == side2 ? (return :draw) : (side1 > side2 ? @name1 : @name2)
  end
end
