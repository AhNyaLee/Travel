class CountriesController < ApplicationController
  before_action :set_country, only: %i[update show destroy edit]

  def create
    country=Country.create(country_params )
    redirect_to "/countries/#{country.id}"
  end
   
  def update
    @country.update(country_params)
    redirect_to "/countries/#{@country.id}"
  end
  
  def destroy
    @country.destroy
    redirect_to "/countries"
  end 

  def index
    @country=Country.all
  end
  
  def new 
    @country=Country.new
  end  
  
  private
  def country_params
    params.require(:country).permit( :country_code, :name, :language, :currency, :timezone, :capital)    
  end
  def set_country
    @country=Country.find(params[:id])
  end  
end
