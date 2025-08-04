class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]

  def index
    @portfolio_items = Portfolio.all
    @plural_table_name = Portfolio.model_name.human(count: :many) # to use in view
  end
  def angular
    @angular_portfolio_items = Portfolio.angular
    @plural_table_name = Portfolio.model_name.human(count: :many) # to use in view
  end

  def new
    @portfolio_item = Portfolio.new
    #Hardcoded version of creating child item from the paremt
    #Iska matlab for each new portfolio obj create 3 technology obj associated with it 
    3.times {@portfolio_item.technologies.build} 
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path, notice: "Portfolio is created"
    else
      render :new
    end
  end

  def show
    # set_portfolio is used
  end

  def edit
    # set_portfolio is used
  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path, notice: "Portfolio is updated"
    else
      render :edit
    end
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path, notice: "Portfolio is deleted"
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image,technologies_attributes: [:name]) #making child attr as a strong params
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
