class CounteroffersController < ApplicationController
  before_action :set_counteroffer, only: [:show, :edit, :update, :destroy]

  # GET /counteroffers
  # GET /counteroffers.json
  def index
    @counteroffers = Counteroffer.all
  end

  # GET /counteroffers/1
  # GET /counteroffers/1.json
  def show
  end

  # GET /counteroffers/new
  def new
    @counteroffer = Counteroffer.new
    flash[:offer_id] = params[:offer_id]
  end

  # GET /counteroffers/1/edit
  def edit
  end

  # POST /counteroffers
  # POST /counteroffers.json
  def create
    @counteroffer = Counteroffer.new(counteroffer_params)

    @offer_id = flash[:offer_id]
    @offer = Offer.find(@offer_id)

    @counteroffer.offer = @offer
    @counteroffer.buyer = @offer.buyer
    @counteroffer.seller = @offer.seller
    @counteroffer.buyer_price = @offer.buyer_price


    respond_to do |format|
      if @counteroffer.save
        format.html { redirect_to @counteroffer, notice: 'Counteroffer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @counteroffer }
      else
        format.html { render action: 'new' }
        format.json { render json: @counteroffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counteroffers/1
  # PATCH/PUT /counteroffers/1.json
  def update
    respond_to do |format|
      if @counteroffer.update(counteroffer_params)
        format.html { redirect_to @counteroffer, notice: 'Counteroffer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @counteroffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counteroffers/1
  # DELETE /counteroffers/1.json
  def destroy
    @counteroffer.destroy
    respond_to do |format|
      format.html { redirect_to counteroffers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counteroffer
      @counteroffer = Counteroffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counteroffer_params
      params.require(:counteroffer).permit(:offer_id, :buyer, :seller, :buyer_price, :seller_price)
    end
end
