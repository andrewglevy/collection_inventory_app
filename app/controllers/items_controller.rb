class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]
  def create
    @item = Item.new(collection_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @collection, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end

    def update
      respond_to do |format|
        if @item.update(collection_params)
          format.html { redirect_to @collection, notice: 'Item was successfully updated.' }
          format.json { render :show, status: :ok, location: @collection }
        else
          format.html { render :edit }
          format.json { render json: @collection.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @item.destroy
      respond_to do |format|
        format.html { redirect_to @collection, notice: 'Item was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def status_name
      if @status === 0
        @status_name = "Want to try"
      elsif @status === 1
        @status_name = "Would buy again"
      elsif @status === 2
        @status_name = "Would not buy again"
      end
      @status_name
    end

  private
    def item
      @item = Item.find(params[:id])
    end

    def collection_params
      params.require(:item).permit(:name, :status, :collection_id, :notes)
    end
end
