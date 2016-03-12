class Product < ActiveRecord::Base
  attr_accessible :descripcion, :imagen_url, :price, :titulo
end
