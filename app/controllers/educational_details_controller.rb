class EducationalDetailsController < ApplicationController
  before_action :set_educational_detail, only: [:show, :edit, :update, :destroy]

  # GET /educational_details
  # GET /educational_details.json
  def index
    @educational_details = EducationalDetail.all
  end

  # GET /educational_details/1
  # GET /educational_details/1.json
  def show
  end

  # GET /educational_details/new
  def new
    @educational_detail = EducationalDetail.new
  end

  # GET /educational_details/1/edit
  def edit
  end

  # POST /educational_details
  # POST /educational_details.json
  def create
    @educational_detail = EducationalDetail.new(educational_detail_params)

    respond_to do |format|
      if @educational_detail.save
        format.html { redirect_to @educational_detail, notice: 'Educational detail was successfully created.' }
        format.json { render :show, status: :created, location: @educational_detail }
      else
        format.html { render :new }
        format.json { render json: @educational_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educational_details/1
  # PATCH/PUT /educational_details/1.json
  def update
    respond_to do |format|
      if @educational_detail.update(educational_detail_params)
        format.html { redirect_to @educational_detail, notice: 'Educational detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @educational_detail }
      else
        format.html { render :edit }
        format.json { render json: @educational_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educational_details/1
  # DELETE /educational_details/1.json
  def destroy
    @educational_detail.destroy
    respond_to do |format|
      format.html { redirect_to educational_details_url, notice: 'Educational detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educational_detail
      @educational_detail = EducationalDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educational_detail_params
      params.require(:educational_detail).permit(:user_id, :basic_qualification, :year_of_passing_BQ, :percentage_BQ, :university_BQ, :post_graduation, :percentage, :year_of_passing, :university)
    end
end
