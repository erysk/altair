# == Schema Information
#
# Table name: purchases
#
#  id           :bigint           not null, primary key
#  amount       :integer          default(0), not null
#  purchased_at :date             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :integer          not null
#
# Indexes
#
#  index_purchases_on_category_id  (category_id)
#
# frozen_string_literal: true

class Purchase < ApplicationRecord
  attribute :purchased_at, default: Date.current

  belongs_to_active_hash :category
end
