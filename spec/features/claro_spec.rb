require 'rails_helper'

feature "Claro", type: :feature do
	scenario 'Mostra mensagem Contas Claro' do
		visit(root_path)
		expect(page).to have_content('Contas Claro')
	end

	scenario 'Vericicar o link Cadastro de Contas' do
		visit(root_path)
		expect(find('ul')).to have_link('Cadastro de Contas')
	end
end
