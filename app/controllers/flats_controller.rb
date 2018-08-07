class FlatsController < ApplicationController
before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    # raise
    if params[:query].nil? || params[:query] == ''
      @flats = Flat.all
    else
      price = params[:query]
      @flats = Flat.where("price_per_night <= ?", price.to_i )
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    if @flat.save
      redirect_to @flat, notice: 'Restaurant was added'
    else
      render :new
    end
  end

  def search
    # price = params[:query]
    # raise
    # @flats = Flat.where("price < ?", price.to_i )
    # redirect_to flat_path(@flats)
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat), notice: 'flat was updated'
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private
  def set_flat
    @flat = Flat.find(params[:id])
  end
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
