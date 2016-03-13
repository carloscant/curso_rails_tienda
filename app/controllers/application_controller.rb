class ApplicationController < ActionController::Base
  	protect_from_forgery

	private

	def carro_actual

		begin
			Carro.find(session[:carro_id])
		rescue ActiveRecord::RecordNotFound
			carro = Carro.create
			session[:carro_id] = carro.id
			carro
		end
		
	end

end
