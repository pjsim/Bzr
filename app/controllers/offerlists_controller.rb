class OfferlistsController < ApplicationController
  before_action :set_offerlist, only: [:show, :edit, :update, :destroy]

  # GET /offerlists
  # GET /offerlists.json
  def index
    @offerlists = Offerlist.all
  end

  # GET /offerlists/1
  # GET /offerlists/1.json
  def show
  end

  # GET /offerlists/new
  def new
    @offerlist = Offerlist.new
  end

  # GET /offerlists/1/edit
  def edit
  end

  # POST /offerlists
  # POST /offerlists.json
  def create
    @offerlist = Offerlist.new(offerlist_params)

    respond_to do |format|
      if @offerlist.save
        format.html { redirect_to @offerlist, notice: 'Offerlist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @offerlist }
      else
        format.html { render action: 'new' }
        format.json { render json: @offerlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offerlists/1
  # PATCH/PUT /offerlists/1.json
  def update
    respond_to do |format|
      if @offerlist.update(offerlist_params)
        format.html { redirect_to @offerlist, notice: 'Offerlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @offerlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offerlists/1
  # DELETE /offerlists/1.json
  def destroy
    @offerlist.destroy
    respond_to do |format|
      format.html { redirect_to offerlists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offerlist
      @offerlist = Offerlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offerlist_params
      params.require(:offerlist).permit(:buyer, :price, :date, :product_id)
    end
end
