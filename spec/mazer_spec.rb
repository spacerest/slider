require 'spec_helper'
require 'slider'
#when spec helper changes paths like currently, 'require_relative 'mazer'' raises error

describe Slider do

  context "can make a two by two slider" do
    let (:slider){ Slider.new(2) }
      it "idk" do
	expect(slider.slide_ary.flatten.length).to eq 2
      end
  end

end 
