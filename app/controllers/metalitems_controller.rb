class MetalitemsController < ApplicationController
  before_action :set_metalitem, only: [:show, :edit, :update, :destroy]

  # GET /metalitems
  # GET /metalitems.json
  def index
    @metalitems = Metalitem.all
   
  end

  # GET /metalitems/1
  # GET /metalitems/1.json
  def show
  end

  # GET /metalitems/new
  def new
    @metalitem = Metalitem.new
  end

  # GET /metalitems/1/edit
  def edit
  end

  # POST /metalitems
  # POST /metalitems.json
  def create
    @metalitem = Metalitem.new(metalitem_params)

    respond_to do |format|
      if @metalitem.save
        format.html { redirect_to @metalitem, notice: 'Metalitem was successfully created.' }
        format.json { render :show, status: :created, location: @metalitem }
      else
        format.html { render :new }
        format.json { render json: @metalitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metalitems/1
  # PATCH/PUT /metalitems/1.json
  def update
    respond_to do |format|
      if @metalitem.update(metalitem_params)
        format.html { redirect_to @metalitem, notice: 'Metalitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @metalitem }
      else
        format.html { render :edit }
        format.json { render json: @metalitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metalitems/1
  # DELETE /metalitems/1.json
  def destroy
    @metalitem.destroy
    respond_to do |format|
      format.html { redirect_to metalitems_url, notice: 'Metalitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metalitem
      @metalitem = Metalitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metalitem_params
      params.require(:metalitem).permit(:description, :quantity, :unit_price, :total)
    end
end
