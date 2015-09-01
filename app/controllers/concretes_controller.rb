class ConcretesController < ApplicationController
  Rack::MethodOverride
  before_action :strong_param, only: [:edit, :update, :new, :create]

  def new
    @concrete = Concrete.new
  end

  def create
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    render nothing: true
  end

  private
  def strong_param
    params.permit(:mix_type,:psi,:color,:cost_per_yard)
  end

end
