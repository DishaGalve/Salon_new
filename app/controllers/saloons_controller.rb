class SaloonsController < ApplicationController
  def index
  	@saloons=Saloon.all
  end


def show
    @saloon = Saloon.find(params[:id])
  end


def new
    @saloon = Saloon.new
  end

  def create
    @saloon = Saloon.new(saloon_params)

    if @saloon.save
      redirect_to root_path
    else
      render :new
    end
  end
def edit
    @saloon = Saloon.find(params[:id])
  end

def update
    @saloon = Saloon.find(params[:id])

    if @saloon.update(saloon_params)
      redirect_to @saloon
    else
      render :edit
    end
  end

  def destroy
    @saloon = Saloon.find(params[:id])
    @saloon.destroy

    redirect_to @saloon
  end

 private
    def saloon_params
      params.require(:saloon).permit(:name, :address, :opening, :closing, :user_id)
    end

end