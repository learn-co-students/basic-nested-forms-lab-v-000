class MamageeseController < ApplicationController
  def show
    set_mama_goose
  end

  def index
    @mamageese = Mamagoose.all
  end

  def new
    @mamagoose = Mamagoose.new
    @mamagoose.gozlinot.build
    @mamagoose.gozlinot.build
  end

  def create
    @mamagoose = Mamagoose.new(mama_g_params)
    if @mamagoose.save
      redirect_to mamagoose_path(@mamagoose)
    else
      render :new
    end
  end

  private

  def set_mama_goose
    @mamagoose = Mamagoose.find(params[:id])
  end

  def mama_g_params(*args)
    params.require(:mamagoose).permit(:name, gozlinot_attributes: [:name, :age])
  end
end
