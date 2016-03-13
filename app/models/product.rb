class Product < ActiveRecord::Base
  attr_accessible :descripcion, :imagen_url, :precio, :titulo

  has_many :carro_lineas

  validates :titulo, :descripcion, :imagen_url, presence: true
  validates :precio, numericality: {greater_than_or_equal_to: 0.01}
  validates :titulo, uniqueness: true
  validates :imagen_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'tiene que ser JPG, GIF o PNG.'
  }
end
