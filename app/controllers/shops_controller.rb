class ShopsController < ApplicationController


 def index
  
 end


 def new
  @shop = Shop.new

 end

 def  show  
 end

 def create
  @shop = Shop.new(shop_params)
   if @shop.valid?
    @shop.save
    redirect_to root_path
   else
     render :new
   end   
end

private
  def shop_params
    params.require(:shop).permit(:name, :explanation, :prefecture_id, :shop_genre_id ,:city, :phone_number,:price ,:times).merge(user_id: current_user.id)
  end

end