class ComputerStoresController < ApplicationController
    def index
        @computer_stores = ComputerStore.all
    end
end