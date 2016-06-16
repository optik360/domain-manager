class CSVImporter
  attr_accessor :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def call
    CSV.foreach(file_path, headers: true) do |row|
      domain = Domain.find_or_initialize_by(id: row["id"])
      attributes = row.to_hash.slice(*Domain.attribute_names)
      domain.update_attributes(attributes)
    end
  end
end