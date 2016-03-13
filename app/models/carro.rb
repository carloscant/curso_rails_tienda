class Carro < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :carro_lineas, dependent: :destroy
end
