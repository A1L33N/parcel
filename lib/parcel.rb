class Parcel
  define_method(:initialize) do |length, width, height, weight, distance, delivery_type|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @volume = volume
    @size = size
    @distance = distance
    @delivery_type = delivery_type



  end



  define_method(:volume) do
    volume = (@length.*(@width)).*(@height)
    volume

  end

  define_method(:size) do
    if @volume.<= 125
      size ="S"

    elsif @volume.<= 1728
      size ="M"

    else
      size ="L"

    end
    size
  end


  define_method(:cost_to_ship) do
    cost = 0
    if @size.=="S"
      size_cost = 5
    elsif @size.=="M"
        size_cost = 10
    else
      size_cost = 20
    end

    if @delivery_type.==("normal")
      delivery_cost = 0

    elsif @delivery_type.==("fast")
      delivery_cost = 10

    else @delivery_type.==("overnight")
      delivery_cost = 20

    end

    weight_cost = @weight.*(0.1)
    distance_cost = @distance.*(0.01)

    cost = (((cost.+(size_cost)).+(weight_cost)).+(distance_cost)).+(delivery_cost)



  end


end
