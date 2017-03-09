require 'spec_helper'
require 'slider'
require 'board'
#when spec helper changes paths like currently, 'require_relative 'mazer'' raises error

describe Board do
  let(:board) { Board.new }
  context "can make a two by one slider" do
    
    it "takes height 1 and width 2 and creates the right array" do
      board.make(1,2).eq [[1,nil]] 
    end 

  
  end

end 
