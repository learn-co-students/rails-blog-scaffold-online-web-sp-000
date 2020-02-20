class ApplicationRecordsController < ApplicationController
  before_action :set_application_record, only: [:show, :edit, :update, :destroy]

  # GET /application_records
  # GET /application_records.json
  def index
    @application_records = ApplicationRecord.all
  end

  # GET /application_records/1
  # GET /application_records/1.json
  def show
  end

  # GET /application_records/new
  def new
    @application_record = ApplicationRecord.new
  end

  # GET /application_records/1/edit
  def edit
  end

  # POST /application_records
  # POST /application_records.json
  def create
    @application_record = ApplicationRecord.new(application_record_params)

    respond_to do |format|
      if @application_record.save
        format.html { redirect_to @application_record, notice: 'Application record was successfully created.' }
        format.json { render :show, status: :created, location: @application_record }
      else
        format.html { render :new }
        format.json { render json: @application_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_records/1
  # PATCH/PUT /application_records/1.json
  def update
    respond_to do |format|
      if @application_record.update(application_record_params)
        format.html { redirect_to @application_record, notice: 'Application record was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_record }
      else
        format.html { render :edit }
        format.json { render json: @application_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_records/1
  # DELETE /application_records/1.json
  def destroy
    @application_record.destroy
    respond_to do |format|
      format.html { redirect_to application_records_url, notice: 'Application record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_record
      @application_record = ApplicationRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_record_params
      params.fetch(:application_record, {})
    end
end
