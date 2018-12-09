class Temperature < ApplicationRecord
  belongs_to :Device
  after_save :broadcast

    def broadcast
        ActionCable.server.broadcast "temperature", data: value
    end
end
