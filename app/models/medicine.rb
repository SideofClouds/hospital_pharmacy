# == Schema Information
#
# Table name: medicines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string           default("")
#  capacity    :integer          default("0")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Medicine < ApplicationRecord

end
