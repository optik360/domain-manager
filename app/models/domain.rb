class Domain < ActiveRecord::Base
  belongs_to :client

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      domain = find_by_id(row["id"]) || new
      parameters = ActionController::Parameters.new(row.to_hash)
      domain.update(parameters.permit(:id,:name,:server,:cms,:due_date,:last_known_state_1,:last_known_state_2,:comment,:created_at,:updated_at,:updated_at,:server_name,:created_at,:last_invoice_date,:mail,:host,:client_id))
      p 1111111111111111111111111111111111111
      p domain["client_id"]
      if domain["client_id"].nil?
        client = Client.find_or_create_by(name: "undefined")
        p client.id
        domain["client_id"] = client.id;
      end
      domain.save!
    end
  end

end