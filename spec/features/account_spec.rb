require 'rails_helper'

feature "Account", type: :feature do

	scenario 'Verifica Link Cadastro de Contas' do
		visit(root_path)
		expect(page).to have_link('Cadastro de Contas')
	end

	scenario 'Verifica Link de Nova Conta' do
		visit(root_path)
		click_on('Cadastro de Contas')
		expect(page).to have_content('Listando Contas')
		expect(page).to have_link('Nova Conta')
	end

	scenario 'Verifica Formulário de Nova Conta' do
		visit(new_account_path)
		click_on('Nova Conta')
		expect(page).to have_content('Nova Conta')
	end

	scenario 'Cadastra uma Conta Válida' do
		visit(new_account_path)
		account_number = Faker::Number.number
		
		fill_in('account_number', with: 'account_number')
    	fill_in('account_name', with: Faker::Name.name)
    	#fill_in('account_cost_center', with: Faker::CostCenter.cost_center)
    	#fill_in('account_work_front', with: Faker::Work_Front.work_front)
    	#fill_in('account_phone', with: Faker::PhoneNumber.phone)
    	click_on('Criar Conta')

    	expect(page).to have_content('Conta cadastrada com sucesso!')
    	expect(Account.last.number).to eq(account_number)
	end
end
