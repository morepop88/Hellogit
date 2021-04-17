class ScheduleHistoriesController < ApplicationController
  before_action :set_schedule_history, only: %i[ show edit update destroy ]

  # GET /schedule_histories or /schedule_histories.json
  def index
    @schedule_histories = ScheduleHistory.all
  end

  # GET /schedule_histories/1 or /schedule_histories/1.json
  def show
  end

  # GET /schedule_histories/new
  def new
    @schedule_history = ScheduleHistory.new
  end

  # GET /schedule_histories/1/edit
  def edit
  end

  # POST /schedule_histories or /schedule_histories.json
  def create
    @schedule_history = ScheduleHistory.new(schedule_history_params)

    respond_to do |format|
      if @schedule_history.save
        format.html { redirect_to @schedule_history, notice: "Schedule history was successfully created." }
        format.json { render :show, status: :created, location: @schedule_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_histories/1 or /schedule_histories/1.json
  def update
    respond_to do |format|
      if @schedule_history.update(schedule_history_params)
        format.html { redirect_to @schedule_history, notice: "Schedule history was successfully updated." }
        format.json { render :show, status: :ok, location: @schedule_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_histories/1 or /schedule_histories/1.json
  def destroy
    @schedule_history.destroy
    respond_to do |format|
      format.html { redirect_to schedule_histories_url, notice: "Schedule history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_history
      @schedule_history = ScheduleHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_history_params
      params.require(:schedule_history).permit(:task_name, :start_at, :end_at)
    end
end
