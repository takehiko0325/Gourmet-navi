class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :show, :destroy ]
  # before_action :search_category_shop, only: [:index, :category, :search]
 def index
  
 end


 def new
  @shop = Shop.new

 end

 def  show  
  
 end

 def confirm
  @shop = Shop.new(shop_params)
  if @shop.invalid?
  render :new
  end 
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

 def category
  @shops = @q.result
  category_id = params[:q][:category_id_eq]
  @category = Category.find_by(id: category_id)
end

  

 def search
   @seach = Shop.ransack(params[:q])
   @shops=@search.result
 end

private
  def shop_params
    params.require(:shop).permit(:name, :explanation, :prefecture_id, :shop_genre_id ,:city, :phone_number,:price ,:times).merge(user_id: current_user.id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  # def search_category_shop
  #   @q = Shop.ransack(params[:q])
  # end
end