class Api::WalletsController < ApplicationController
    def index
        @wallet_data = Wallet.find(current_user.id)
    end
end