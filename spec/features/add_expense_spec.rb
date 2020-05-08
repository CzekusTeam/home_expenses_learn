require 'rails_helper'

RSpec.feature "AddExpenses", type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let!(:category) { FactoryBot.create(:category) }
  let!(:period) { FactoryBot.create(:period) }


  scenario 'user adds new expense' do
    visit root_path
    click_link 'Sign In'

    fill_in :Email, with: user.email
    fill_in :Password, with: user.password
    click_button 'Login'

    visit root_path
    click_on 'Add Expense'

    expect {
      fill_in :Amount, with: 10
      select category.name, from: :Category
      select period.name, from: :Period
      fill_in :Description, with: 'Money spent on food'

      click_on 'Add'
    }.to change { Expense.count }.by 1

    expect(page).to have_content 'Expense added'
    expect(page).to have_content 'Money spent on food'
  end
end
