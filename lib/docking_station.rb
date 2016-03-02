require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "The stations is EMPTY!" unless @bike
    @bike
  end

  def dock_bike(bike)
    raise "The station is FULL!" if @bike
    @bike = bike
  end

  def bike
    @bike
  end

end
