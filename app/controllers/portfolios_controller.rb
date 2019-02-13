class PortfoliosController < ApplicationController
  layout 'portfolio'
  access all: [:show, :index, :ruby], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index 
    @portfolio_items = Portfolio.all
  end

  def ruby
    @ruby_portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def new 
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.valid?
      @portfolio_item.save
      redirect_to portfolios_path
    else  
      render :new
    end
  end
  
  def show 
    @portfolio_item = Portfolio.find(params[:id])
  end

  def edit 
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update 
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.update(portfolio_params)
    if @portfolio_item.save 
      redirect_to portfolios_path
    else 
      render :edit
    end
  end 

  def destroy 
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    redirect_to portfolios_path
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, :url_link, :source_url, :youtube_url, technologies_attributes: [:id, :name, :_destroy])
  end



end
