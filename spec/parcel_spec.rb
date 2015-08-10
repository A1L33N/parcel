require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe('#volume') do
    it("returns the volume of a parcel based on its dimensions") do
      test_parcel = Parcel.new(5, 8, 6, 5)
      expect(test_parcel.volume()).to(eq(240))
    end
  end

end
