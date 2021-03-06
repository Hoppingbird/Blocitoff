class ItemsController < ApplicationController
  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:notice] = "Item saved successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end
    redirect_to current_user
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item deleted successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end

    respond_to do |format|
      format.html { redirect_to current_user }
      format.js
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:notice] = "Item updated successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end
    redirect_to current_user
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
