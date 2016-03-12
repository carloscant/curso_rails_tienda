require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	test "atributos de productos obligatorios" do
		product = Product.new

		assert product.invalid?
		assert product.errors[:titulo].any?
		assert product.errors[:descripcion].any?
		assert product.errors[:precio].any?
	end

	test "el precio del producto tiene que ser positivo" do

		product = Product.new(titulo:"Titulo",
			descripcion: "Descripcion",
			imagen_url:"imagen.jpg")

		product.precio = -1
		assert product.invalid?
		assert_equal "must be greater than or equal to 0.01",product.errors[:precio][0]

		product.precio = 0
		assert product.invalid?
		assert_equal "must be greater than or equal to 0.01",product.errors[:precio][0]

		product.precio = 1
		assert product.valid?
	end

	def new_product(image_url)
		Product.new(titulo:"Titulo",
		descripcion: "descripcion",
		precio:1,
		imagen_url:image_url)
	end

	test "image url" do

		ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
		bad = %w{ fred.doc fred.gif/more fred.gif.more }
		ok.each do |name|
			assert new_product(name).valid?, "#{name} shouldn't be invalid"
		end
		bad.each do |name|
			assert new_product(name).invalid?, "#{name} shouldn't be valid"
		end
	end		

	test "product is not valid without a unique title" do
		product = Product.new(titulo:products(:iphone4).titulo,
		descripcion: "yyy",
		precio:1,
		imagen_url:"imagen.gif")

		assert !product.save

		assert_equal "has already been taken", product.errors[:titulo][0]
	end	

end
