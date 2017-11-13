class Post < ApplicationRecord

  belongs_to :category

  belongs_to :user

  has_many :comments

  def self.filter(args)
    if args[:category_id]
      Post.where(['category_id = ?', args[:category_id]])
    else
      Post.all
    end
  end
end
