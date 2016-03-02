require 'docking_station'

describe DockingStation do

  # list of methods DockingStation responds to
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock_bike }
  it { is_expected.to respond_to :bike }

  describe "#release_bike" do

    it "releases working bikes" do
      bike = Bike.new
      subject.dock_bike bike
      expect(subject.release_bike).to eq(bike)
    end

    it "raise an error when the station is empty" do
      expect { subject.release_bike }.to raise_error("The stations is EMPTY!") if subject.bike_list.count == 0
    end

  end

  describe "#dock_bike" do

    it "accepts bikes to be docked" do
      bike = Bike.new
      subject.dock_bike bike
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "raises an error when the station is full" do
      bike = Bike.new
      expect { subject.dock_bike bike }.to raise_error("The station is FULL!") if subject.bike_list.count == subject.capacity
    end

  end

  describe "#bike" do

    it "returns a docked bike" do
      bike = Bike.new
      subject.dock_bike bike
      expect(subject.bike).to eq(subject.bike_list)
    end



  end

end
