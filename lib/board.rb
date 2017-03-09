class Board
  attr_accessor :matrix
  attr_reader :height, :width

  def initialize(height, width)
    @height = height
    @width = width
    populate_board
  end

  def populate_board
    self.matrix = (1..(height * width)).to_a.each_slice(width).to_a
  end

  def move(direction)
    emp = find_empty_space
    if direction == "L"
      temp = matrix[emp[0]][emp[1]-1]
      self.matrix[emp[0]][emp[1]-1] = matrix[emp[0]][emp[1]]
      self.matrix[emp[0]][emp[1]] = temp
    elsif direction == "R"
      raise RuntimeError
    end
  end

  def find_empty_space
    matrix.each_with_index do |h, h_idx|
      h.each_with_index do |w, w_idx|
        if w == height * width
          return [h_idx, w_idx]
        end
      end
    end
  end

end
