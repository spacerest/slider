class Board
  attr_accessor :matrix
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
    # @matrix = [[1,nil]]
    populate_board
  end

  def populate_board
    self.matrix = (1..(height * width)).to_a.each_slice(width).to_a
    # width.times do
  end

  def move(direction)
    if direction == "L"
    self.matrix.map! { |i|
      i.reverse
   }
    elsif direction == "R"
      raise RuntimeError
    end
  end

end
