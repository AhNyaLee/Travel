class ClientListsController < ApplicationController

  before_action :set_client_list, only: %i[update show destroy edit]
  def create
    client=ClientList.create(client_list_params )
    redirect_to "/client_lists/#{client.id})"
  end
   
  def update
    @client_list.update(client_list_params)
    redirect_to "/client_lists/#{@client_list.id}"
  end
  
  def destroy
    @client_list.destroy
    redirect_to "/client_lists"
  end 
  
  def show 
  end

  def index
    @client_list=ClientList.all
  end
  
  def new 
      @client_list=ClientList.new
  end  
  
  def edit
  end  

  private
  def client_list_params
    params.require(:client_list).permit(:id_client,:name, :surname,:patronymic,:birthday,:email,:phone)
  end  

  def set_client_list
    @client_list=ClientList.find(params[:id])
  end  
  
end
