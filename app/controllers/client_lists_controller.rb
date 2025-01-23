class ClientListsController < ApplicationController

  before_action :set_client_list, only: %i[update show destroy edit]
  
  def create

    @client_list=ClientList.create(client_list_params )
    if @client_list.save
      redirect_to @client_list
    else
      Rails.logger.error(@client_list.errors.full_messages)
      flash.now[:alert] = @client_list.errors.full_messages.to_sentence
      render :new
    end
  end
   
  def update
    @client_list.update(client_list_params)
    redirect_to "/client_lists/#{@client_list.id}"
  end
  
  def destroy
    @client_list.destroy
    redirect_to "/client_lists"
  end 
  
  def index
    @client_list=ClientList.all
  end
  
  def new 
      @client_list=ClientList.new
  end  
  
  def show
    @orders = HistoreOrder.where(id_client: @client_list.id)
  end  
 

  private
  def client_list_params
    params.require(:client_list).permit(:id_client,:name, :surname,:patronymic,:birthday,:email,:phone)
  end  

  def set_client_list
    @client_list=ClientList.find(params[:id])
  end  
  
end
