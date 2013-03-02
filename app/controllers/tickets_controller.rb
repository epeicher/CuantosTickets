class TicketsController < ApplicationController

	def create
		@amtf = params[:ticket][:cuantos].to_f
		@amt = @amtf.round(0).to_i
		@deDos = GetNoOfTwo()
		@deSiete = GetNoOfSeven()
	end

	def Cuantos
		create
		render 'create'
	end

	def index
	end	

	def GetNoOfTwo		
		return (@amt - GetNoOfSeven() * 7) / 2
	end

	def GetNoOfSeven		
		if(@amt > 9) then
			return (@amtf / 9).round(0).to_i
		end		
		return @amt / 7
	end
	
end