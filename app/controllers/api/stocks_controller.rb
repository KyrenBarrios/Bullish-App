class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :update, :destroy]

  # GET /stocks
  def index
    @stocks = Stock.all

    render json: @stocks, include: [:comments], status: 200
  end

  # GET /stocks/1
  def show

    @stocks = Stock.find(params[:id])

    render json: @stock, status: 200
  end

  # POST /stocks
  def create
    @stock = Stock.create(stock_params)

    render json: @stock, include: [:comments], status: 200
end

def update
    @stock = Stock.find(params[:id])
    @stock.update(stock_params)

    render json: @stock, status: 200
end

def destroy
    @stock = Stock.find(params[:id])
    @stock.delete

    render json: {stock_id: @stock.id}

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.require(:stock).permit(:name, :price, :category)
    end
end
