class PagesController < ApplicationController
	def main
		@kartus = Kartu.all
		@games = Game.all
		@macs = Mac.all
	end

end
