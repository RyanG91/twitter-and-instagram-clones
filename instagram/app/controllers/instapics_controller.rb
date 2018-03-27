class InstapicsController < ApplicationController
  before_action :set_instapic, only: [:show, :edit, :update, :destroy]

  # GET /instapics
  # GET /instapics.json
  def index
    @instapics = Instapic.all
  end

  # GET /instapics/1
  # GET /instapics/1.json
  def show
  end

  # GET /instapics/new
  def new
    @instapic = Instapic.new
  end

  # GET /instapics/1/edit
  def edit
  end

  # POST /instapics
  # POST /instapics.json
  def create
    @instapic = Instapic.new(instapic_params)
    @instapic.user = current_user

    respond_to do |format|
      if @instapic.save
        format.html { redirect_to @instapic, notice: 'Instapic was successfully created.' }
        format.json { render :show, status: :created, location: @instapic }
      else
        format.html { render :new }
        format.json { render json: @instapic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instapics/1
  # PATCH/PUT /instapics/1.json
  def update
    respond_to do |format|
      if @instapic.update(instapic_params)
        format.html { redirect_to @instapic, notice: 'Instapic was successfully updated.' }
        format.json { render :show, status: :ok, location: @instapic }
      else
        format.html { render :edit }
        format.json { render json: @instapic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instapics/1
  # DELETE /instapics/1.json
  def destroy
    @instapic.destroy
    respond_to do |format|
      format.html { redirect_to instapics_url, notice: 'Instapic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instapic
      @instapic = Instapic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instapic_params
      params.require(:instapic).permit(:picture, :post, :user_id)
    end
end
