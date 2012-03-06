class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  validates_presence_of :text, :role_type, :category, :user
  validates_inclusion_of :role_type, :in => %Q{truth dare}

  scope :truth, where(['role_type = ?', 'truth'])
  scope :dare, where(['role_type = ?', 'dare'])
end
