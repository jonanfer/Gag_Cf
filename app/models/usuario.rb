class Usuario < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :salt, :username
  attr_accessible  :username, :email, :password, :password_confirmation
  authenticates_with_sorcery!
  has_many :posts
  validates_confirmation_of :password, message: "Ambos campos deben coincidir", if: :password
end
