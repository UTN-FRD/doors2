class GatesController < ApplicationController
  
  http_basic_authenticate_with name: "neko", password: "123", except: [:index, :show]

  def index
  	@gates = Gate.all
  end

  def show
    @gate = Gate.find(params[:id])
  end

  def new
  	@gate = Gate.new
  end

  def edit
  @gate = Gate.find(params[:id])
  end

  def create
	@gate = Gate.new(gate_params)

	if @gate.save
       redirect_to @gate
    else
       render 'new'
    end
  end

  def update
  @gate = Gate.find(params[:id])
 
  if @gate.update(gate_params)
    redirect_to @gate
  else
    render 'edit'
  end
end


def destroy
  @gate = Gate.find(params[:id])
  @gate.destroy
 
  redirect_to gates_path
end

  private
	def gate_params
    params.required(:gate).permit(:codigo, :ubicacion, :descripcion, :area)
	end
end