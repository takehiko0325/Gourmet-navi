class ShopsController < ApplicationController


 def index
  
 end


 def new
  @shop = Shop.new

 end

 def  show  
 end

 def create
  @shop = Shops.new
  if @shop.valid?
    @shop.save
    redirect_to root_path
  else
    render :new
  end   
end

private
  def shop_params
    params.require(:shop).permit(:name, :prefecture_id, :shop_genre_id,:city, :address, :phone_number)
  end

end