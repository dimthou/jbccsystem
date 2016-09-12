class JbccsController < ApplicationController
  before_action :set_jbcc, only: [:show, :edit, :update, :destroy]

  # GET /jbccs
  # GET /jbccs.json
  def index
    @jbccs = Jbcc.all
  end

  # GET /jbccs/1
  # GET /jbccs/1.json
  def show
  end

  # GET /jbccs/new
  def new
    @jbcc = Jbcc.new
  end

  # GET /jbccs/1/edit
  def edit
  end

  # POST /jbccs
  # POST /jbccs.json
  def create
    @jbcc = Jbcc.new(jbcc_params)

    respond_to do |format|
      if @jbcc.save
        format.html { redirect_to @jbcc, notice: 'Jbcc was successfully created.' }
        format.json { render :show, status: :created, location: @jbcc }
      else
        format.html { render :new }
        format.json { render json: @jbcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jbccs/1
  # PATCH/PUT /jbccs/1.json
  def update
    respond_to do |format|
      if @jbcc.update(jbcc_params)
        format.html { redirect_to @jbcc, notice: 'Jbcc was successfully updated.' }
        format.json { render :show, status: :ok, location: @jbcc }
      else
        format.html { render :edit }
        format.json { render json: @jbcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jbccs/1
  # DELETE /jbccs/1.json
  def destroy
    @jbcc.destroy
    respond_to do |format|
      format.html { redirect_to jbccs_url, notice: 'Jbcc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jbcc
      @jbcc = Jbcc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jbcc_params
      params.require(:jbcc).permit(:name, :kanji, :sex, :tel, :email, :introductor, :company, :account_name, :account_number, :create_date, :support, :service, :address, :remark, :image)
    end
end
