# Ensure custom formats are registered for respond_to in modern Rails
# Guard against re-registration in host apps
unless Mime::Type.lookup_by_extension(:csv)
  Mime::Type.register "text/csv", :csv
end

unless Mime::Type.lookup_by_extension(:xls)
  Mime::Type.register "application/vnd.ms-excel", :xls
end
