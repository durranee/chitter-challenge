feature 'Adding new peeps' do
  scenario 'User adds new peeps' do
    visit('/')
    fill_in('txt_username', with: 'johndoe')
    fill_in('txt_pwd', with: 'johndoe')
    click_on('btn_login')
    fill_in('tb_peep', with: 'Peep addition feature test.')
    click_on('btn_peep')
    expect(page).to have_content('Peep addition feature test.')
  end
end
