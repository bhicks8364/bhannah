# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  published_at :datetime
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  source_url   :string
#

class Post < ActiveRecord::Base
    before_save :set_state
    scope :published, -> { where.not(published_at: nil) }
    def set_state
        if state.blank?
            self.state = "Draft"
        end
    end
end
