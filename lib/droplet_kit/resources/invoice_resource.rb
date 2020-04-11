module DropletKit
  class InvoiceResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /v2/customers/my/invoices' do
        query_keys :per_page, :page
        handler(200) { |response| InvoiceMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /v2/customers/my/invoices/:id' do
        query_keys :per_page, :page
        handler(200) { |response| InvoiceItemMapping.extract_collection(response.body, :read) }
      end
      action :preview, 'GET /v2/customers/my/invoices/preview' do
        query_keys :per_page, :page
        handler(200) { |response| InvoiceItemMapping.extract_collection(response.body, :read) }
      end

    end
    def all(*args)
      PaginatedResource.new(action(:all), self, *args)
    end
  end
end
