module ApplicationHelper

  def httpStatus(domain)
    begin
      http = Net::HTTP.new(domain.name,80)
      http.request_get('/').code.to_i.between?(200,399) ? 'up' : 'update'
    rescue
      return 'down'
    end
  end
end