class Gardner < ApplicationRecord
    validates :name, presence: true, length: {minimum:3}
    validates :plot_num, presence: true, length: {minimum:1}
end
