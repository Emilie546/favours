class ContractsController < ApplicationController

  def index
    @contracts = Contract.where(user: current_user)
  end

  def new
    @favour = Favour.find(params[:favour_id])
  end

  def create
    @favour = Favour.find(params[:favour_id])
    Contract.create(user: current_user, favour: @favour)
    redirect_to contracts_path
  end
end
