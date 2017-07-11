class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      if (idx != 6 && idx != 13)
        4.times  {cups[idx] << :stone}
      end
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 13 || start_pos == 0
    raise 'Invalid starting cup' if start_pos.empty?
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos] # array containing the stones taken from start_pos
    cups[start_pos] = []
    idx = start_pos
    if current_player_name == @name1
      until stones.empty?
        idx += 1
        idx = 0 if idx > 13
        cups[idx] << stones.pop unless idx == 13
      end
    else
      until stones.empty?
        idx += 1
        idx = 0 if idx > 13
        cups[idx] << stones.pop unless idx == 6
      end
    end
    render
    next_turn(idx)
  end



  def next_turn(ending_cup_idx)
    if cups[ending_cup_idx].count == 1
      :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    else
      ending_cup_idx
    end

    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
