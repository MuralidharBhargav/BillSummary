class BillSummariesController < ApplicationController
  before_action :set_bill_summary, only: [:show, :edit, :update, :destroy]

  # GET /bill_summaries
  # GET /bill_summaries.json
  def index
    @bill_summaries = BillSummary.all
  end

  # GET /bill_summaries/1
  # GET /bill_summaries/1.json
  def show
  end

  # GET /bill_summaries/new
  def new
    @bill_summary = BillSummary.new
  end

  # GET /bill_summaries/1/edit
  def edit
  end

  # POST /bill_summaries
  # POST /bill_summaries.json
  def create
    @bill_summary = BillSummary.new(bill_summary_params)

    respond_to do |format|
      if @bill_summary.save
        format.html { redirect_to @bill_summary, notice: 'Bill summary was successfully created.' }
        format.json { render :show, status: :created, location: @bill_summary }
      else
        format.html { render :new }
        format.json { render json: @bill_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_summaries/1
  # PATCH/PUT /bill_summaries/1.json
  def update
    respond_to do |format|
      if @bill_summary.update(bill_summary_params)
        format.html { redirect_to @bill_summary, notice: 'Bill summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_summary }
      else
        format.html { render :edit }
        format.json { render json: @bill_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_summaries/1
  # DELETE /bill_summaries/1.json
  def destroy
    @bill_summary.destroy
    respond_to do |format|
      format.html { redirect_to bill_summaries_url, notice: 'Bill summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_summary
      @bill_summary = BillSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_summary_params
      params.require(:bill_summary).permit(:Title, :PaymentDate, :Description, :Amount)
    end
end
