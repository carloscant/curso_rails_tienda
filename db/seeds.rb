#encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(titulo: 'Iphone 6s',
	descripcion:
		%{
			<p>El iPhone 6s es un smartphone de alta gama diseñado por Apple Inc., con procesador de dos núcleos a 1.85 GHz, 2 GB de memoria RAM y pantalla de 4,7 pulgadas. Es parte de la serie iPhone y fue anunciado el 9 de septiembre de 2015. El iPhone 6s y 6s Plus son conjuntamente sucesores del iPhone 6 y iPhone 6 Plus de 2014.</p>
		},
	imagen_url: 'iphone6.png',
	precio: 749.99)

Product.create(titulo: 'Iphone 5s',
	descripcion:
		%{
			<p>El iPhone 5s es un teléfono inteligente de gama alta desarrollado por Apple Inc. Fue presentado como la sexta generación de iPhone el 12 de septiembre de 2012,2 siendo el sucesor del iPhone 4S. Presenta un sistema operativo IOS 6, pantalla táctil de 4" (101,6 mm), un procesador Apple A6 de doble núcleo de 1.3 GHz, 8 Mpx de cámara trasera, 1 GB de RAM, y presentado con 16, 32 y 64 GB de almacenamiento interno es un terminal con 32 bits de procesador Fueron lanzados tres modelos: modelo GSM A1428 para Estados Unidos y Canadá, modelo CDMA A1429 para Estados Unidos y Japón, y modelo GSM A1429 para el resto del mundo,3 que se diferencian entre sí por las redes soportadas.</p>
		},
	imagen_url: 'iphone5.png',
	precio: 500)
