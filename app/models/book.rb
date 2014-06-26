# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :string(255)
#  page       :string(255)
#  genre      :string(255)
#  isbn       :string(255)
#  image      :text
#  author_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Book < ActiveRecord::Base
  belongs_to :author
end
