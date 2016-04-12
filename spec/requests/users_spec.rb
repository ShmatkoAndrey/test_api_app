require 'rails_helper'

describe 'Users', :type => :request do
  describe 'GET /users' do
    it 'works! (now write some real specs)', :js => true do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'should have the content "users"', :js => true do
      visit users_path
      expect(page).to have_content('users')
    end

    it 'should have the content user name', :js => true do
      User.create(email: '123@mail.ru', name: 'TEST USER')
      visit users_path
      expect(page).to have_content('TEST USER')
    end

    it 'should have the content user id', :js => true do
      User.create(email: '123@mail.ru', name: Faker::Name.name)
      visit users_path
      expect(page).to have_content('1')
    end


  end

end
