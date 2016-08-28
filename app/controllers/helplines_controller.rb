class HelplinesController < ApplicationController
  before_action :set_helpline, only: [:show, :edit, :update, :destroy]

  # GET /helplines
  # GET /helplines.json
  def index
    @helplines = current_region.helplines.paginate(page: params[:page], per_page: 10)
  end

  # GET /helplines/1
  # GET /helplines/1.json
  def show
  end

  # GET /helplines/new
  def new
    @helpline = current_region.helplines.new
  end

  # GET /helplines/1/edit
  def edit
  end

  # POST /helplines
  # POST /helplines.json
  def create
    @helpline = current_region.helplines.build(helpline_params)

    respond_to do |format|
      if @helpline.save
        format.html { redirect_to @helpline, notice: 'Helpline was successfully created.' }
        format.json { render :show, status: :created, location: @helpline }
      else
        format.html { render :new }
        format.json { render json: @helpline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helplines/1
  # PATCH/PUT /helplines/1.json
  def update
    respond_to do |format|
      if @helpline.update(helpline_params)
        format.html { redirect_to @helpline, notice: 'Helpline was successfully updated.' }
        format.json { render :show, status: :ok, location: @helpline }
      else
        format.html { render :edit }
        format.json { render json: @helpline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helplines/1
  # DELETE /helplines/1.json
  def destroy
    @helpline.destroy
    respond_to do |format|
      format.html { redirect_to helplines_url, notice: 'Helpline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helpline
      @helpline = Helpline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helpline_params
      params.require(:helpline).permit(:name, :address, :phone_number, :mobile_number, :helpline_category_id)
    end
end
