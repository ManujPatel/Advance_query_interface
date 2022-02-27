class OrdersController < ApplicationController
  # frozen_string_literal: true
  before_action :set, only: [:show, :edit, :update, :destroy]
  def index
    if params[:search]
      @orders=Order.all
      @orders=Order.where(status:'booked') if params[:search]=="booked"
      @orders=Order.where(status:'cancelled') if params[:search]=="cancelled"
    else
      @orders = Order.all
    end
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
    end
  end

  def search_order_by_product_name
    if params[:search]
      @order_id=Order.where("product_id=?",(Product.where("name=?",params[:search]).pluck(:id)))
    end
  end

  private
    def order_params
      params.require(:order).permit(:quantity, :customer_id, :total_price, :product_id,:status)
    end
    def set
      @order= Order.find(params[:id])
    end
end
