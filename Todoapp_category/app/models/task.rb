class Task < ApplicationRecord
    belongs_to :category
    def status=(value)
        super(value.to_i.clamp(0, 1))
    end
end
