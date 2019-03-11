class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to store_index_url, notice:
          'Thank you for your order.' }
          format.json { render :show, status: :created,
            location: @order }
         else
            format.html { render :new }
            format.json { render json: @order.errors,
              status: :unprocessable_entity }
          end
        end
      end
    end
