class ItemsController < ApplicationController
  
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
  def item_params
    params.require(:item).permit(:name, :description, :price, :quantity)
  end
end
