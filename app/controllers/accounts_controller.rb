class AccountsController < ApplicationController
	def index
	end

	def show
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(params_account)

		if @account.save
		   redirect_to account_path, notice: 'Conta cadastrada com sucesso!'
		else
			render :new
		end	   
	end

	def account_params
			params.require(:account). permit(:id, :number, :name, :cost_center, :work_front, :phone)
	end
end
