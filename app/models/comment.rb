class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :day
  def template
    ApplicationController.renderer.render partial: 'comments/comment', locals: { comment: self }
  end
end
