class ApartmentsController < ApplicationController
    def new
        @apartment = Apartment.new 
        @buildings = Building.all
    end

    def create
    @apartment = Apartment.new(apartment_params)

        respond_to do |format| 
            if @apartment.save
                format.html { redirect_to @apartment, notice: 'Apartment was successfully created.' }
            else
                format.html { render :new } 
            end
        end 
    end

    private
    def apartment_params
        params.require(:apartment).permit(:number, :building_id) 
    end

    def index
        @apartments = Apartment.all
    end

    def show
        @apartment = Apartment.find(params[:id])
    end
end
