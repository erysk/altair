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

require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'デフォルト値' do
    specify do
      purchase = Purchase.new
      expect(purchase.amount).to be 0
      expect(purchase.purchased_at).to eq Date.current
    end
  end
end
