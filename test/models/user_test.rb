require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test 'User save valid email and name' do
  #   user = User.new(email: "#{Random.new_seed}@mail.com", name: Random.new_seed)
  #   assert user.save
  # end
  # test 'User save invalid email and name' do
  #   user = User.new(email: "#{Random.new_seed}.com", name: Random.new_seed)
  #   assert_not user.save
  # end
  # test 'User save presence email' do
  #   email = "#{Random.new_seed}@mail.com"
  #   user = User.new(email: email, name: Random.new_seed)
  #   assert  user.save, 'first user'
  #   user2 = User.new(email: email, name: Random.new_seed)
  #   assert_not user2.save, 'second user with email first user'
  # end
  # test 'User save presence email WiTh SeNsItIvE' do
  #     email = "#{Random.new_seed}@mail.com"
  #     user = User.new(email: email, name: Random.new_seed)
  #     assert  user.save
  #     user2 = User.new(email: email.upcase, name: Random.new_seed)
  #     assert_not user2.save
  # end

end