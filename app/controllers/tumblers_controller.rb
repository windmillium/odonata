class TumblersController < ApplicationController
  before_action :set_tumbler, only: %i[ show edit update destroy ]

  # GET /tumblers or /tumblers.json
  def index
    @tumblers = Current.user.tumblers.all
  end

  # GET /tumblers/1 or /tumblers/1.json
  def show
  end

  # GET /tumblers/new
  def new
    @tumbler = Current.user.tumblers.new
  end

  # GET /tumblers/1/edit
  def edit
  end

  # POST /tumblers or /tumblers.json
  def create
    @tumbler = Current.user.tumblers.new(tumbler_params)

    respond_to do |format|
      if @tumbler.save
        format.html { redirect_to @tumbler, notice: "Tumbler was successfully created." }
        format.json { render :show, status: :created, location: @tumbler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tumbler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tumblers/1 or /tumblers/1.json
  def update
    respond_to do |format|
      if @tumbler.update(tumbler_params)
        format.html { redirect_to @tumbler, notice: "Tumbler was successfully updated." }
        format.json { render :show, status: :ok, location: @tumbler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tumbler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tumblers/1 or /tumblers/1.json
  def destroy
    @tumbler.destroy!

    respond_to do |format|
      format.html { redirect_to tumblers_path, status: :see_other, notice: "Tumbler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tumbler
      @tumbler = Tumbler.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tumbler_params
      params.expect(tumbler: [ :name, :brand, :model ])
    end
end
