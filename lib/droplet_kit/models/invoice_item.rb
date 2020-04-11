module DropletKit
    class InvoiceItem < BaseModel
      attribute :product
      attribute :resource_id
      attribute :description
      attribute :group_description
      attribute :amount
      attribute :duration
      attribute :duration_unit
      attribute :start_time
      attribute :end_time
    end
  end
