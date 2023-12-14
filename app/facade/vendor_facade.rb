class VendorFacade
  def self.vendor(id)
    vendor = VendorService.vendor(id)[:data]
    Vendor.new(vendor)
  end
end
