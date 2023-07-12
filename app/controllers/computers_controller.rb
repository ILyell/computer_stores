class ComputersController < ApplicationController

    def index
        @computers = Computer.all
    end

    def show
        @computers = Computer.find(params[:id])
    end
end