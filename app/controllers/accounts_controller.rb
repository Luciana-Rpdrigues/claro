class AccountsController < ApplicationController
	before_action :set_account, only: [:show, :edit, :update, :destroy]
	def index
		@account = Account.all
	end

	def show
		@account = Account.find_by(id: params[:id])
	end

	def new
		@account = Account.new
	end

	def edit
 		@account = Account.find(params[:id])
	end

	def create
		@account = Account.new(account_params)

		if @account.save
			redirect_to accounts_path notice: 'Conta cadastrada com sucesso!'
    	else
			render :new
		end
	end

	def account_params
		params.require(:account). permit(:id, :number, :name, :cost_center, :work_front, :phone)
	end

	private
	
	def set_account
    @account = Account.all
  	end

 	def account_params
		params.require(:account). permit(:id, :number, :name, :cost_center, :work_front, :phone)
	end
end
