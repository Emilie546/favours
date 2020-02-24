class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new(params[:favour_id])
    @contract = @favour.contract.build
  end

  def create
    @contract = Contract.new(contract_params)
    @favour = Favour.find(params[:favour_id])
    @contract.user = current_user
    @contract.favour = @favour
    if @contract.save
      redirect_to contracts_path
    else
      render 'favours/show'
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:cancelled_at)
  end
end
