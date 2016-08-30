class MaintenanceReceiptsController < ApplicationController
  before_action :set_maintenance_receipt, only: [:show, :edit, :update, :destroy]

  # GET /maintenance_receipts
  # GET /maintenance_receipts.json
  def index
    @maintenance_receipts = current_society.maintenance_receipts.paginate(page: params[:page], per_page: 10)
  end

  # GET /maintenance_receipts/1
  # GET /maintenance_receipts/1.json
  def show
  end

  # GET /maintenance_receipts/new
  def new
    @maintenance_receipt = current_society.maintenance_receipts.new
  end

  # GET /maintenance_receipts/1/edit
  def edit
  end

  # POST /maintenance_receipts
  # POST /maintenance_receipts.json
  def create
    @maintenance_receipt = current_society.maintenance_receipts.new(maintenance_receipt_params)

    respond_to do |format|
      if @maintenance_receipt.save
        format.html { redirect_to @maintenance_receipt, notice: 'Maintenance receipt was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance_receipt }
      else
        format.html { render :new }
        format.json { render json: @maintenance_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_receipts/1
  # PATCH/PUT /maintenance_receipts/1.json
  def update
    respond_to do |format|
      if @maintenance_receipt.update(maintenance_receipt_params)
        format.html { redirect_to @maintenance_receipt, notice: 'Maintenance receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance_receipt }
      else
        format.html { render :edit }
        format.json { render json: @maintenance_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_receipts/1
  # DELETE /maintenance_receipts/1.json
  def destroy
    @maintenance_receipt.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_receipts_url, notice: 'Maintenance receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_receipt
      @maintenance_receipt = MaintenanceReceipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_receipt_params
      params.require(:maintenance_receipt).permit(:receipt, :society_id, :month, :year)
    end
end
