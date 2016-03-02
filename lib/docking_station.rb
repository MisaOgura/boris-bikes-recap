require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "The stations is empty!" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

  def bike
    @bike
  end

end
