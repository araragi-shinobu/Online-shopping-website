class LineitemsController < ApplicationController
  include(CurrentCart)
  
  before_action :set_lineitem, only: %i[ show edit update destroy ]

  before_action(:set_cart)

  # GET /lineitems or /lineitems.json
  def index
    @lineitems = Lineitem.all
  end

  # GET /lineitems/1 or /lineitems/1.json
  def show
  end

  # GET /lineitems/new
  def new
    @lineitem = Lineitem.new
  end

  # GET /lineitems/1/edit
  def edit
  end

  # POST /lineitems or /lineitems.json
  def create
    # @lineitem = Lineitem.new(lineitem_params)

    # @line_item = @cart.lineitems.build(product_id: params[:product_id])
    @line_item = @cart.add_item(params[:product_id])

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to shopper_url, notice: "Lineitem was successfully created." }
        format.js
        format.json { render :show, status: :created, location: @lineitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineitems/1 or /lineitems/1.json
  def update
    respond_to do |format|
      if @lineitem.update(lineitem_params)
        format.html { redirect_to lineitem_url(@lineitem), notice: "Lineitem was successfully updated." }
        format.json { render :show, status: :ok, location: @lineitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineitems/1 or /lineitems/1.json
  def destroy
    @lineitem.destroy!

    respond_to do |format|
      format.html { redirect_to lineitems_url, notice: "Lineitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lineitem_params
      params.require(:lineitem).permit(:product_id, :cart_id)
    end
end
