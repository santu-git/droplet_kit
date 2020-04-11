module DropletKit
    class InvoiceItemMapping
      include Kartograph::DSL

      kartograph do
        mapping InvoiceItem
        root_key plural: 'invoice_items', singular: 'invoice_item', scopes: [:read]

        scoped :read do
          property :product
          property :description
          property :amount
          property :duration
          property :duration_unit
          property :start_time
          property :end_time
        end
      end
    end
  end
