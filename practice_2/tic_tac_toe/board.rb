class Board
  def initialize
    @grid = Array.new(3) { Array.new(3) { "_" } }
  end

  def valid?(position)
    if position.length == 2
      return position.all? { |ele| ele <= 2 }
    end

    false
  end

  def empty?(position)
    x = position[0].to_i
    y = position[1].to_i
    @grid[x][y] == "_"
  end

  def place_mark(position, mark)
    x = position[0]
    y = position[1]
    raise "error" if !self.empty?(position) || !self.valid?(position)
    @grid[x][y] = mark
  end

  def print
    @grid.each do |row|
      puts row
    end
  end

  def win_row?(mark)
    @grid.each do |row|
      return row.all? { |ele| ele == mark }
    end
  end

  def win_col?(mark)
    vertical = []
    @grid.each_with_index do |row, i|
      @grid.each_with_index do |col, j|
        vertical << @grid[j][i]
      end
      if vertical.all? { |ele| ele == mark }
        return true
      end
      vertical = []
    end
    false
  end

  def win_diagonal?(mark)
    right = []
    left = []
    (0...@grid.length).each do |i|
      left << @grid[i][i]
      right << @grid[i][(@grid.length - 1) - i]
    end

    return right.all? { |ele| ele == mark } || left.all? { |ele| ele == mark }
  end

  def win?(mark)
    self.win_row?(mark) || self.win_col?(mark) || self.win_diagonal?(mark)
  end

  def empty_positions?
    @grid.each do |row|
      row.each do |ele|
        if ele == "_"
          return true
        end
      end
    end
    false
  end
end
