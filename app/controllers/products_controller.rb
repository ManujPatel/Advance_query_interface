class ProductsController < ApplicationController
  before_action :set, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end
  private
    def product_params
      params.require(:product).permit(:name, :price, :title, :description,:capacity,:is_active,:status)
    end

    def set
      @product= Product.find(params[:id])
    end
end
