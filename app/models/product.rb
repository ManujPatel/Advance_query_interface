class Product < ApplicationRecord
    # frozen_string_literal: true
    validates :title,:description,:price,:capacity,:status, presence: true
    enum :status, [:in_stock, :out_of_stock, :coming_soon]
    default_scope { where(is_active:true)}
    has_many :orders, dependent: :destroy
end

