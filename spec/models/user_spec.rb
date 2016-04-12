require 'rails_helper'

# bundle exec rake db:migrate
# bundle exec rake test:prepare
# bundle exec rspec spec/models/user_spec.rb

describe User do

  it 'has a valid factory' do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  before { @user = FactoryGirl.build(:user) }
  subject { @user }

  it { expect respond_to(:name) }
  it { expect respond_to(:email) }
  it { expect be_valid }

  describe 'when name is not present' do
    before { @user.name = ' ' }
    it { expect(@user).not_to be_valid }
  end

  describe 'when name is too long' do
    before { @user.name = 'name' * 25 }
    it { expect(@user).not_to be_valid }
  end

  describe 'when email is not present' do
    before { @user.email = ' ' }
    it { expect(@user).not_to be_valid }
  end

  describe 'when email format is invalid' do
    it 'should be invalid' do
      %w(user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com).each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe 'when email format is valid' do
    it 'should be valid' do
      %w(user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn).each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe 'when email address is already taken' do
    before do
      user2 = @user.dup
      user2.save
    end
    it { expect(@user).not_to be_valid }
  end

  describe 'when email address is already taken with upcase' do
    before do
      user2 = @user.dup
      user2.email = @user.email.upcase
      user2.save
    end
    it { expect(@user).not_to be_valid }
  end

end