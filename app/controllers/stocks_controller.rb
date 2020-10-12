class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  def index
    @gbeans = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to stocks_path, notice: 'Stock was successfully created.' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end

  end
  
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to stocks_path, notice: 'Green was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def set_stock
    @stock = Stock.find(params[:id])
  end
  
  def stock_params
    params.require(:stock).permit(:buy_date, :bean, :amount, :instock, :country, :process)
  end
end
