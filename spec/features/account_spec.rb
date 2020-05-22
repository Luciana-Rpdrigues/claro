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
		visit(root_path)
	end
end
