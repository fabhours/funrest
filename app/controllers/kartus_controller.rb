require 'uri'
class KartusController < ApplicationController
  before_action :set_kartu, only: [:show, :edit, :update, :destroy]

  # GET /kartus
  # GET /kartus.json
  def index
    @kartus = Kartu.all
  end

  # GET /kartus/1
  # GET /kartus/1.json
  def show
  end

  def show_saldo
    @kartu = Kartu.find_by_nomor(params[:nomor])
  end

  def xsc
    @kartu = Kartu.find_by_nomor(params[:nomor])
    respond_to do |format|
      if @kartu.update(kartu_params)
        @sisa_saldo = @kartu.saldo
        # format.html { redirect_to kartus_url, notice: 'Kartu was successfully updated.' }
        format.json { render :show, status: :ok, location: @kartu }
        # format.js
      else
        format.html { render :edit }
        format.json { render json: @kartu.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /kartus/new
  def new
    @kartu = Kartu.new
  end

  # GET /kartus/1/edit
  def edit
  end

  # POST /kartus
  # POST /kartus.json
  def create
    @kartu = Kartu.new(kartu_params)

    respond_to do |format|
      if @kartu.save
        format.html { redirect_to @kartu, notice: 'Kartu was successfully created.' }
        format.json { render :show, status: :created, location: @kartu }
      else
        format.html { render :new }
        format.json { render json: @kartu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kartus/1
  # PATCH/PUT /kartus/1.json
  def update
    respond_to do |format|
      if @kartu.update(kartu_params)
        format.html { redirect_to @kartu, notice: 'Kartu was successfully updated.' }
        format.json { render :show, status: :ok, location: @kartu }
      else
        format.html { render :edit }
        format.json { render json: @kartu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kartus/1
  # DELETE /kartus/1.json
  def destroy
    @kartu.destroy
    respond_to do |format|
      format.html { redirect_to kartus_url, notice: 'Kartu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kartu
      @kartu = Kartu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kartu_params
      params.require(:kartu).permit(:nomor, :saldo, :bonus, :freegame, :eticket)
    end
end
