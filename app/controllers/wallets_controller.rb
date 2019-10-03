class WalletsController < ApplicationController
    def index
        @wallets = Wallet.find(current_user.id)
    end
end
