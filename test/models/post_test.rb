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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
