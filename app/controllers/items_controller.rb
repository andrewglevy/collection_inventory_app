class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item.collection, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        @collection = @item.collection
        format.html { render 'collections/show' }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item.collection, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
        format.js { render 'show' }
      else
        format.html { render 'collections/show' }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
        format.js { render 'show' }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @item.collection, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  def edit
    @collection = @item.collection
  end

private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :status_id, :collection_id, :notes)
  end
end
