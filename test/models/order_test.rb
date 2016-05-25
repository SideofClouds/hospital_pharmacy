# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  medicine_id    :integer          not null
#  user_id        :integer          not null
#  quantity       :integer          default("1")
#  approved_by_id :integer
#  status         :integer          default("0")
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
