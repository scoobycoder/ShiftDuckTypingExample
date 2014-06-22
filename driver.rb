class Driver
  def initialize(vehicle)
    @vehicle = vehicle
  end

  def shift_vehicles
    @vehicle.shift_vehicle
  end
end