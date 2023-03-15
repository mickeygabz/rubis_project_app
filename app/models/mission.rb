class Mission < ApplicationRecord
    validates :title, presence: true, length: { in: 1..250 }
    validates :manufacturer, presence: true
    validates :website, presence: true
    validates :description, presence: true
end
