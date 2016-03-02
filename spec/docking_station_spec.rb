require 'docking_station'

describe DockingStation do

  # list of methods DockingStation responds to
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock_bike }
  # it { is_expected.to respond_to :show_bike }

  describe "#release_bike" do

    it "releases working bikes" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

  end

  describe "#dock_bike" do

    it "accepts bikes to be docked" do
      bike = subject.release_bike
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

  end

end
