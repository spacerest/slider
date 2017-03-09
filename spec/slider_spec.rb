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

    # it "takes height 1 and width 2 and creates the right array" do
    #   board =  Board.new(1, 2) 
    #   expect(board.matrix).to eq [[1,nil]] 
    # end 
  end

end 
