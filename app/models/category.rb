# frozen_string_literal: true

class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '肉類' },
    { id: 2, name: '魚類' },
    { id: 3, name: '野菜' },
    { id: 4, name: '穀類' },
    { id: 5, name: 'パン' },
    { id: 6, name: '果物' },
    { id: 7, name: '菓子' },
    { id: 8, name: '飲料' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :purchases, dependent: :destroy
end
