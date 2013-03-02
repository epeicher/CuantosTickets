class TicketsController < ApplicationController

	def create
		amt = params[:ticket][:cuantos].to_i
		@deDos = (amt - GetNoOfSeven() * 7) / 2
		@deSiete = GetNoOfSeven()
	end

	def index
	end	

	def GetNoOfSeven		
	    amt = params[:ticket][:cuantos].to_i.round
        if (amt > 9) then                        
            return (amt / 9).round
        end
        return amt / 7
	end

end
