class PrototypesController < ApplicationController
  before_action :prototype_find , only: [:show , :edit , :update]

  def index
    @prototype = Prototype.includes(:user)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    prototype = Prototype.new(prototype_params)
    if prototype.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to prototype_path
    else
      render :edit
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title , :catch_copy , :concept , :image).merge(user_id: current_user.id)
  end

  def prototype_find
    @prototype = Prototype.find(params[:id])
  end
end
