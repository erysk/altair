# frozen_string_literal: true

# == Schema Information
#
# Table name: payments
#
#  id          :bigint           not null, primary key
#  amount      :integer          not null
#  payment_at  :date             default(Sun, 17 Jan 2021), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_payments_on_category_id  (category_id)
#
class Payment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
