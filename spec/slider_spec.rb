require 'spec_helper'
require 'slider'
require 'board'
#when spec helper changes paths like currently, 'require_relative 'mazer'' raises error

describe Board do
  
  context "can make a board" do
  
    it "takes height 1 and width 2 and creates the right array" do
      board =  Board.new(1, 2) 
      expect(board.matrix).to eq [[1,2]] 
    end 

    it "takes height 2 and width 2 and creates the right array" do
      board =  Board.new(2, 2) 
      expect(board.matrix).to eq [[1, 2], [3, 4]] 
    end 

  end

  context "can move" do
    
    it "left in a 1 X 2" do
      board = Board.new(1,2)
      board.move("L")
      expect(board.matrix).to eq [[2,1]]
    end

    it "cannot move right in a 1 X 2" do
      board = Board.new(1,2)
      expect{board.move("R")}.to raise_error(RuntimeError)
    end

    it "left in a 3 X 3" do
      board = Board.new(3, 3)
      board.move('L')
      expect(board.matrix).to eq [[1, 2, 3], [4, 5, 6], [7, 9, 8]]
    end 
  end 

  context 'board' do
    it 'find the empty space' do
      board = Board.new(2, 2)
      board.matrix = [[2, 4], [1, 3]]
      expect(board.find_empty_space).to eq [0, 1]
    end
  end
end 
