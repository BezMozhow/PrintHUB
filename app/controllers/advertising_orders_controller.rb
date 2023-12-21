class AdvertisingOrdersController < ApplicationController

    def new
        @advertising_order = AdvertisingOrder.new
    end

    def create
        @advertising_order = AdvertisingOrder.new(advertising_order_params)
        @advertising_order.price = (@advertising_order.ad_height * @advertising_order.ad_width) * 80
        

        if @advertising_order.save
          redirect_to @advertising_order, notice: 'Advertising order was successfully created.'
        else
          render :new
        end
    end

    def show
        @advertising_order = AdvertisingOrder.find(params[:id])
    end


    private

    def advertising_order_params
      params.require(:advertising_order).permit(:ad_width, :ad_height, :comment, :ad_topic, :ad_image, :number_of_inserts)
    end
end
  