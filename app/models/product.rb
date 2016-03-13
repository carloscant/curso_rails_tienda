class Product < ActiveRecord::Base
  attr_accessible :descripcion, :imagen_url, :precio, :titulo

  before_destroy :comprobar_si_hay_lineas

  has_many :carro_lineas

  validates :titulo, :descripcion, :imagen_url, presence: true
  validates :precio, numericality: {greater_than_or_equal_to: 0.01}
  validates :titulo, uniqueness: true
  validates :imagen_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'tiene que ser JPG, GIF o PNG.'
  }

  private

  def comprobar_si_hay_lineas

  	if carro_lineas.empty?

  		return true

  	else

  		errors.add(:base,'Existen lineas asociadas')

  		return false

  	end

  end


end
