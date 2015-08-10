require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/shipping_cost') do
  length = (params.fetch('length')).to_i()
  width = (params.fetch('width')).to_i()
  height = (params.fetch('height')).to_i()
  weight = (params.fetch('weight')).to_i()
  distance = (params.fetch('distance')).to_i()
  delivery_type = params.fetch('delivery_type')
  @new_parcel = Parcel.new(length, width, height, weight, distance, delivery_type)
  erb(:shipping_cost)

end
