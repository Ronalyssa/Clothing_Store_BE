class ItemsController < ApplicationController

    def index
        items = Item.all
    end
    
    def show
        item = Item.find(params[:id])
        render json: item.to_json(only: [:id, :title, :price, :description, :category, :image],
                                    include: [user: { only: [:id, :username, :password]}])
    end
    
    def create
        item = item.new(item_params)
        if item.save 
            render json: item, except: [:created_at, :updated_at]
          else
            render json: [error: "Something went wrong with creating item."]
          end
    end

    private

    def item_params
        params.require(:item).permit(:id, :title, :price, :description, :category, :image)
        
    end
    
    
end
