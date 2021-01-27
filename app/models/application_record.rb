# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions

  self.abstract_class = true
end
