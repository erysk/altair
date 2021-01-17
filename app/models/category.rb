# frozen_string_literal: true

class Category < ActiveYaml::Base
  set_root_path Rails.root.join('app/models/active_yaml/data')
  set_filename 'category'

  include ActiveHash::Associations
  has_many :payments, dependent: :destroy
end
