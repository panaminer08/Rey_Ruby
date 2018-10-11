class Admin < ApplicationRecord
    has_one :flash

    after_create :create_flash
    after_destroy :destroy_flash

    def create_flash
    Flash.create(admin_id: self.id)
    end
end
