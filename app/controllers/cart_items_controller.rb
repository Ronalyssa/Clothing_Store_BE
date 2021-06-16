class CartItemsController < ApplicationController

    def index
        cartItems = CartItem.all
        render json: cartItems
    end

    def show
        cartItem = CartItem.find(params[:id])
        render json: cartItem 
    end
    
    def create
        cartItem = CartItem.new(cart_item_params)
        if cartItem.save
            render json: cartItem, except: [:created_at, :updated_at] 
        else
            render json: [error: "Something went wrong with creating Cart Items."]
        end
    end
    
    def update
        cartItem = CartItem.find(params[:id])
        if cartItem.update(cart_item_params)
            render json: cartItem
        else 
            render json: [error: "Something went wrong with updating Cart Items."]
        end
    end
    
    def destroy
        cartItem = CartItem.find(params[:id])
        if cartItem.destroy
            render json: cartItem
        else 
            render json: [error: "Something went wrong with deleting Cart Items."]
        end
        
    end
    
   
    private

    def cart_item_params
        params.require(:cart_item).permit(:cart_id, :user_id)
        
    end
    
end
