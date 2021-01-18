class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :day
  # def template
  #   ApplicationController.renderer.render partial: 'views/days/_comment', locals: { comment: self }
  # end
end
