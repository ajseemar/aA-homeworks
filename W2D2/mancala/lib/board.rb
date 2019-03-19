class Board
  attr_accessor :cups
  attr_reader :name1, :name2
  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    @name1 = name1
    @name2 = name2
    place_stones
  end

  # def is_store?(cup)
  #   return true if @cups.index(cup) == 6 || @cups.index(cup) == 13
  #   false
  # end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups[0..5].each { |cup| 4.times { cup << :stone } }
    @cups[7..12].each { |cup| 4.times { cup << :stone } }
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0,13)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    hand = []
    # cups[start_pos].length.times { hand.push(cups[start_pos].pop)}
    until cups[start_pos].empty?
      hand.push(cups[start_pos].pop)
    end
    
    next_index = (start_pos + 1) % 14

    until hand.empty?
      if current_player_name == name1
        cups[next_index].push(hand.pop) unless next_index == 13
      else
        cups[next_index].push(hand.pop) unless next_index == 6
      end
      current_index = next_index
      next_index = (current_index + 1) % 14
    end
    # render
    next_index -= 1
    if next_index <= 0
      next_index = 13
    end
    render
    next_turn(next_index, current_player_name)
  end

  def next_turn(ending_cup_idx, player)
    if ending_cup_idx == 6
      return :prompt if player == name1
    elsif ending_cup_idx == 13
      return :prompt if player == name2
    end
    # return :switch if cups[ending_cup_idx].length == 1
    return ending_cup_idx unless cups[ending_cup_idx].empty?
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    bottom = cups[0..5].all? { |cup| cup.length == 0 }
    top = cups[7...13].all? { |cup| cup.length == 0 }
    top || bottom
  end

  def winner
    bottom = cups[0..5].all? { |cup| cup.length == 0 }
    top = cups[7...13].all? { |cup| cup.length == 0 }
    return :draw if cups[6] == cups[13]
    return top ? name2 : name1
  end
end
