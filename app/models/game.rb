class Game < ActiveRecord::Base
	has_one :mac, dependent: :destroy
end
