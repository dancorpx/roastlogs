class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all
        @rev_items = @items.sort.reverse
        @search = params["search"]
        if @search.present?
          @title = @search["title"]
          @items = Item.where("title ILIKE ?", "%#{@title}%")
        end
    end
    
    def new
        @item = Item.new
    end
    
    def edit
    end
    
    def create
        @item = Item.new(item_params)
    
        respond_to do |format|
          if @item.save
            format.html { redirect_to items_path, notice: 'Item was successfully created.' }
            format.json { render :show, status: :created, location: @item }
          else
            format.html { render :new }
            format.json { render json: @item.errors, status: :unprocessable_entity }
          end
      end
    end

    def update
      respond_to do |format|
        if @item.update(item_params)
          format.html { redirect_to items_path, notice: 'item was successfully updated.' }
          format.json { render :show, status: :ok, location: @item }
        else
          format.html { render :edit }
          format.json { render json: @item.errors, status: :unprocessable_entity }
        end
      end
    end


    def destroy
      @item.destroy
      respond_to do |format|
        format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :link, :content)
    end
end
