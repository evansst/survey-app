class ResponseOptionsController < ApplicationController
  before_action :set_response_option, only: [:show, :edit, :update, :destroy]

  # GET /response_options
  # GET /response_options.json
  def index
    @response_options = ResponseOption.all
  end

  # GET /response_options/1
  # GET /response_options/1.json
  def show
  end

  # GET /response_options/new
  def new
    @response_option = ResponseOption.new
  end

  # GET /response_options/1/edit
  def edit
  end

  # POST /response_options
  # POST /response_options.json
  def create
    @response_option = ResponseOption.new(response_option_params)

    respond_to do |format|
      if @response_option.save
        format.html { redirect_to @response_option, notice: 'Response option was successfully created.' }
        format.json { render :show, status: :created, location: @response_option }
      else
        format.html { render :new }
        format.json { render json: @response_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /response_options/1
  # PATCH/PUT /response_options/1.json
  def update
    respond_to do |format|
      if @response_option.update(response_option_params)
        format.html { redirect_to @response_option, notice: 'Response option was successfully updated.' }
        format.json { render :show, status: :ok, location: @response_option }
      else
        format.html { render :edit }
        format.json { render json: @response_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /response_options/1
  # DELETE /response_options/1.json
  def destroy
    @response_option.destroy
    respond_to do |format|
      format.html { redirect_to response_options_url, notice: 'Response option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response_option
      @response_option = ResponseOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def response_option_params
      params.require(:response_option).permit(:type)
    end
end
