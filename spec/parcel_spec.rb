require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe('#volume') do
    it("returns the volume of a parcel based on its dimensions") do
      test_parcel = Parcel.new(5, 8, 6, 5, 0, "normal")
      expect(test_parcel.volume()).to(eq(240))
    end
  end

  describe(:size) do
    it("assigns a parcel size based on its volume") do
      test_parcel = Parcel.new(5, 6, 6, 5, 0, "normal")
      expect(test_parcel.size()).to(eq("M"))
    end
  end

  describe(:cost_to_ship) do
    it("factors parcel size into cost") do
      test_parcel = Parcel.new(6, 8, 7, 0, 0, "normal")
      expect(test_parcel.cost_to_ship()).to(eq(10))
    end

    it("factors parcel weight into cost") do
      test_parcel = Parcel.new(5, 5, 5, 10, 0, "normal")
      expect(test_parcel.cost_to_ship()).to(eq(6))
    end

    it("factors delivery distance into cost") do
      test_parcel = Parcel.new(10, 10, 10, 5, 500, "normal")
      expect(test_parcel.cost_to_ship()).to(eq(15.5))
    end

    it("factors delivery speed into cost") do
      test_parcel = Parcel.new(10, 10, 10, 5, 500, "overnight")
      expect(test_parcel.cost_to_ship()).to(eq(35.5))
    end
  end
end
