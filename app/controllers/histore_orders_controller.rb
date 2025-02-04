class HistoreOrdersController < ApplicationController
  before_action :set_order, only: %i[update show destroy edit]

  def create
    @order = HistoreOrder.new(order_params)
  
    begin
      if @order.save!
        redirect_to @order
      else
        flash.now[:alert] = @order.errors.full_messages.to_sentence
        render :new
      end
    rescue ActiveRecord::RecordInvalid => e
      # Логируем ошибку в панель разработчика
      Rails.logger.error("Ошибка при сохранении заказа: #{e.message}")
      
      # Выводим сообщение об ошибке пользователю
      flash.now[:alert] = "Не удалось создать заказ: #{e.message}"
      render :new
    end
  end
   
  def update
    @order.update(order_params)
    redirect_to "/histore_orders/#{@order.id}"
  end
  
  def destroy
    @order.destroy
    redirect_to "/histore_orders"
  end 
  
  def index
    @order=HistoreOrder.all
  end
  
  def new 
    @order=HistoreOrder.new
  end  
  
  private
  def order_params
    params.require(:histore_order).permit(:number_order, :name, :start_date, :end_date, :price, :id_client, :country_id)
  end 

  def set_order
    @order=HistoreOrder.find(params[:id])
  end  
end
