require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
