class ItemsController < ApplicationController
  before_action :set_grocery
  before_action :set_item, only: [:show, :update, :edit, :destroy]

  def index
    @items = grocery.items
  end

  def show
  end

  def new
    @item = @grocery.items.new
  end

  def create
    @item = @grocery.items.new(item_params)
    if @item.save
      redirect_to grocery_items_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to grocery_items_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to grocery_items_path
  end

  private
  def set_grocery
    @grocery = Grocery.find(params[:grocery_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :quantity)
  end
end
