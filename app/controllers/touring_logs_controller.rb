class TouringLogsController < ApplicationController
  before_action :set_touring_log, only: %i[ show edit update destroy ]

  # GET /touring_logs or /touring_logs.json
  def index
    @touring_logs = TouringLog.all
  end

  # GET /touring_logs/1 or /touring_logs/1.json
  def show
  end

  # GET /touring_logs/new
  def new
    @touring_log = TouringLog.new
  end

  # GET /touring_logs/1/edit
  def edit
  end

  # POST /touring_logs or /touring_logs.json
  def create
    @touring_log = TouringLog.new(touring_log_params)

    respond_to do |format|
      if @touring_log.save
        format.html { redirect_to @touring_log, notice: "Touring log was successfully created." }
        format.json { render :show, status: :created, location: @touring_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @touring_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touring_logs/1 or /touring_logs/1.json
  def update
    respond_to do |format|
      if @touring_log.update(touring_log_params)
        format.html { redirect_to @touring_log, notice: "Touring log was successfully updated." }
        format.json { render :show, status: :ok, location: @touring_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @touring_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touring_logs/1 or /touring_logs/1.json
  def destroy
    @touring_log.destroy
    respond_to do |format|
      format.html { redirect_to touring_logs_url, notice: "Touring log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touring_log
      @touring_log = TouringLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def touring_log_params
      params.fetch(:touring_log, {})
    end
end
