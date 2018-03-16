require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }

  subject { @user }

  # make sure that these are accessible properties of the User model
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  # Passes if the given model instance's valid? method is true
  # meaning all of the ActiveModel::Validations passed and no errors exist
  it { should be_valid }

  it { should validate_presence_of(:email) }
  # it { should validate_uniqueness_of(:email) }
  # it { should validate_confirmation_of(:password) }
  # it { should allow_value('example@domain.com').for(:email) }

  # it { should have_many(:products) }
  # it { should have_many(:orders) }
end
