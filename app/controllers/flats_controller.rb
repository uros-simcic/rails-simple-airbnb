class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    render :show
  end

  def edit
  end

  def show

  end

  def update
  end

  def destroy
  end

  private
    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night)
    end
end
