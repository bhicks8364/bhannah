# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  published_at :datetime
#  state        :string
#  created_at   :datetime
#  updated_at   :datetime
#  source_url   :string
#  category_id  :integer
#

class Post < ActiveRecord::Base
    belongs_to :category
    before_save :set_state
    scope :published, -> { where.not(published_at: nil) }
    def set_state
        if state.blank?
            self.state = "Draft"
        end
    end
end
