class ComputersByStoreController < ApplicationController

    def index
        @computer_store = ComputerStore.find(params[:computer_store_id])
        @computers = @computer_store.computer
    end
end