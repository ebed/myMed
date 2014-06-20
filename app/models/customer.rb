class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #acts_as_token_authenticatable

  devise :database_authenticatable,  :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  before_save :ensure_authentication_token
  has_many :alergies
  has_many :doctors
  has_many :emergency_contacts
  has_many :meds
  has_many :med_profiles
  accepts_nested_attributes_for :doctors, :med_profiles, :meds, :emergency_contacts, :alergies
  acts_more_seo :email
 # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
 	