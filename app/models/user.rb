#frozen_string_literal: true
class User < ActiveRecord::Base 
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:spotify]
end
