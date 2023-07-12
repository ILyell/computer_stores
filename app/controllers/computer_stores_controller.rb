class ComputerStoresController < ApplicationController
    def index
        @computer_stores = ComputerStore.all
    end

    def show
        @computer_stores = ComputerStore.find(params[:id])
    end
end