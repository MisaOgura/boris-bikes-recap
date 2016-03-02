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
      expect {subject.release_bike}.to raise_error("The stations is empty!") if subject.bike == nil
    end

  end

  describe "#dock_bike" do

    it "accepts bikes to be docked" do
      bike = Bike.new
      subject.dock_bike bike
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

  end

  describe "#bike" do

    it "returns a docked bike" do
      bike = Bike.new
      subject.dock_bike bike
      expect(subject.bike).to eq(bike)
    end



  end

end
