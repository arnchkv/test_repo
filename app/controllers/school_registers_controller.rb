class SchoolRegistersController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_school_register, only: [:show, :edit, :update, :destroy]

  # GET /school_registers
  # GET /school_registers.json
  def index
    @school_registers = SchoolRegister.all
  end

  # GET /school_registers/1
  # GET /school_registers/1.json
  def show
  end

  # GET /school_registers/new
  def new
    @school_register = SchoolRegister.new
  end

  # GET /school_registers/1/edit
  def edit
  end

  # POST /school_registers
  # POST /school_registers.json
  def create
    @school_register = SchoolRegister.new(school_register_params)

    respond_to do |format|
      if @school_register.save
        format.html { redirect_to @school_register, notice: 'School register was successfully created.' }
        format.json { render :show, status: :created, location: @school_register }
      else
        format.html { render :new }
        format.json { render json: @school_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_registers/1
  # PATCH/PUT /school_registers/1.json
  def update
    respond_to do |format|
      if @school_register.update(school_register_params)
        format.html { redirect_to @school_register, notice: 'School register was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_register }
      else
        format.html { render :edit }
        format.json { render json: @school_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_registers/1
  # DELETE /school_registers/1.json
  def destroy
    @school_register.destroy
    respond_to do |format|
      format.html { redirect_to school_registers_url, notice: 'School register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_register
      @school_register = SchoolRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_register_params
      params.require(:school_register).permit(:roll, :name, :age)
    end
end
