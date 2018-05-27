class Manage::HistoriesController < Manage::BaseController
  before_action :set_history, only: [:show, :edit, :update, :destroy]

  # GET /manage/histories
  # GET /manage/histories.json
  def index
    @histories = History.order('date DESC')
  end

  # GET /manage/histories/1
  # GET /manage/histories/1.json
  def show
  end

  # GET /manage/histories/new
  def new
    @history = History.new
  end

  # GET /manage/histories/1/edit
  def edit
  end

  # POST /manage/histories
  # POST /manage/histories.json
  def create
    @history = History.new(history_params)

    respond_to do |format|
      if @history.save
        format.html { redirect_to [:manage, @history], notice: 'History was successfully created.' }
        format.json { render action: 'show', status: :created, location: @history }
      else
        format.html { render action: 'new' }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manage/histories/1
  # PATCH/PUT /manage/histories/1.json
  def update
    respond_to do |format|
      if @history.update(history_params)
        format.html { redirect_to [:manage, @history], notice: 'History was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/histories/1
  # DELETE /manage/histories/1.json
  def destroy
    @history.destroy
    respond_to do |format|
      format.html { redirect_to manage_histories_url, notice: 'History was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_params
      params.require(:history).permit(:date, :member_name, :role_name)
    end
end
