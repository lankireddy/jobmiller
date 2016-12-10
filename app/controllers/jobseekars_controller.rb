class JobseekarsController < ApplicationController
  before_action :set_jobseekar, only: [:show, :edit, :update, :destroy]

  # GET /jobseekars
  # GET /jobseekars.json
  def index
    @jobseekars = Jobseekar.all
  end

  # GET /jobseekars/1
  # GET /jobseekars/1.json
  def show
  end

  # GET /jobseekars/new
  def new
    @jobseekar = Jobseekar.new
  end

  # GET /jobseekars/1/edit
  def edit
  end

  # POST /jobseekars
  # POST /jobseekars.json
  def create
    @jobseekar = Jobseekar.new(jobseekar_params)

    respond_to do |format|
      if @jobseekar.save
        format.html { redirect_to @jobseekar, notice: 'Jobseekar was successfully created.' }
        format.json { render :show, status: :created, location: @jobseekar }
      else
        format.html { render :new }
        format.json { render json: @jobseekar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobseekars/1
  # PATCH/PUT /jobseekars/1.json
  def update
    respond_to do |format|
      if @jobseekar.update(jobseekar_params)
        format.html { redirect_to @jobseekar, notice: 'Jobseekar was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobseekar }
      else
        format.html { render :edit }
        format.json { render json: @jobseekar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobseekars/1
  # DELETE /jobseekars/1.json
  def destroy
    @jobseekar.destroy
    respond_to do |format|
      format.html { redirect_to jobseekars_url, notice: 'Jobseekar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobseekar
      @jobseekar = Jobseekar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobseekar_params
      params.require(:jobseekar).permit(:user_id, :dob, :gender)
    end
end
