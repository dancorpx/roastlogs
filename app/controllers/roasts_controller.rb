class RoastsController < ApplicationController
  before_action :set_roast, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
def index
    @roasts = Roast.all
end

def show
    
    @comments = @roast.comments.all
    @comment = @roast.comments.build
end

def new
    @roast = Roast.new
end

def edit
end

def create
    @roast = Roast.new(roast_params)

    respond_to do |format|
      if @roast.save
        format.html { redirect_to @roast, notice: 'Roast was successfully created.' }
        format.json { render :show, status: :created, location: @roast }
      else
        format.html { render :new }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
  end
end
def update
    respond_to do |format|
      if @roast.update(roast_params)
        format.html { redirect_to @roast, notice: 'Roast was successfully updated.' }
        format.json { render :show, status: :ok, location: @roast }
      else
        format.html { render :edit }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
    end
end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_roast
      @roast = Roast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roast_params
      params.require(:roast).permit(:date, :beans, :s_weight, :f_weight, :air_temp, :roaster, :f_crack_s, :f_crack_e, :s_crack_s, :f_crack_e, :total_time, :cooling_time, :roast_notes, :end_temp, :end_heat, :drop_temp, :turn_point)
    end

end