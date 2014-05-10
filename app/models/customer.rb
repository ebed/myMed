class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :alergies
  has_many :doctors
  has_many :emergency_contacts
  has_many :meds
  has_many :med_profiles
  accepts_nested_attributes_for :doctors, :med_profiles, :meds, :emergency_contacts, :alergies
  acts_more_seo :email
end
 	