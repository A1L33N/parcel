class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @volume = volume
  end



  define_method(:volume) do
    volume = (@length.*(@width)).*(@height)
    volume

  end


end
