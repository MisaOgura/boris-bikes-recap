require_relative 'bike'

class DockingStation
  attr_reader :bike, :bike_list, :capacity

  def initialize
    @bike_list = []
    @capacity = 20
  end

  def release_bike
    raise "The stations is EMPTY!" if empty?
    @bike_list.pop
  end

  def dock_bike(bike)
    raise "The station is FULL!" if full?
    @bike_list << bike
  end

  def bike
    @bike_list
  end

  private

  def full?
    @bike_list.count == @capacity
  end

  def empty?
    @bike_list.empty?
  end

end
