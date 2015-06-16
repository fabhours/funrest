class PagesController < ApplicationController
	def main
		@kartus = Kartu.all
		@games = Game.all
		@macs = Mac.all
	end

	def xgc
		@gameID = Mac.find_by_address(params[:address]).game_id
		@currentCard = Kartu.find_by_nomor(params[:nomor])
		# @isCardRegistered = Kartu.all.include? @currentCard
		if @currentCard 
			card_saldo = @currentCard.saldo
			game_price = Game.find(@gameID).price1
			if card_saldo - game_price > 0
				@status = "saldo cukup"
				@sisa_saldo = card_saldo - game_price
				@bonus = @currentCard.bonus
				@freegame = @currentCard.freegame
				@eticket = @currentCard.eticket
			else
				@status = "saldo kurang"
				@sisa_saldo = card_saldo - game_price
				@bonus = @currentCard.bonus
				@freegame = @currentCard.freegame
				@eticket = @currentCard.eticket
			end
		else
			@status = "unregistered"
			@sisa_saldo = 0
			@bonus = 0
			@freegame = 0
			@eticket = 0
		end

		respond_to do |format|
			format.json
		end
	end

end
