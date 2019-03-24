class TrucksController < ApplicationController
    def index
    end
    def new
        @truck = Truck.new
    end
end
