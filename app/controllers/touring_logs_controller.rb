class TouringLogsController < ApplicationController
  before_action :set_touring_log, only: [:show, :destroy]
  
  def index
    @touring_logs = TouringLog.all
  end

  def show
    @reviews = @touring_log.reviews
    @review = Review.new
  end

 def new
    @touring_log = TouringLog.new
  end
 
  def create
   @touring_log = TouringLog.new(touring_log_params)
   @touring_log.save
   redirect_to touring_logs_url @touring_log
  end

  def edit
  end

 
  def update
  end

  
  def destroy
    @touring_log.destroy
    redirect_to touring_logs_url
  end

  private

  def set_touring_log
    @touring_log = TouringLog.find(params[:id])
  end


  def touring_log_params
        params.require(:touring_log).permit(:name)
  end  
end
