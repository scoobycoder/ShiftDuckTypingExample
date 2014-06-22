require 'rspec'
require './truck'
require './driver'
require './auto'
require './manual'
require './sequential'

describe 'Shift Everything' do

  it 'should shift a truck' do
    driver = Driver.new(Truck.new)

    driver.shift_vehicles.should == :double_clutch
  end

  it 'should shift an automatic' do
    driver = Driver.new(Auto.new)

    driver.shift_vehicles.should == :do_nothing
  end

  it 'should shift manual' do
    driver = Driver.new(Manual.new)

    driver.shift_vehicles.should == :row_gears
  end

  it 'should shift sequential' do
    driver = Driver.new(Sequential.new)

    driver.shift_vehicles.should == :flick_paddle
  end

end

