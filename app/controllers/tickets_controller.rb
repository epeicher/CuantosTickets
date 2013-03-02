class TicketsController < ApplicationController

	def create
		amt = params[:ticket][:cuantos].to_i
		@deDos = (amt - GetNoOfSeven() * 7) / 2
		@deSiete = GetNoOfSeven()
	end

	def index
	end	

	def GetNoOfSeven		
	    amt = params[:ticket][:cuantos].to_i
        if (amt > 9) then                        
            return amt / 9
        end
        return amt / 7
	end

end
