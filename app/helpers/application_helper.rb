module ApplicationHelper
  
  def httpStatus(domain)
    begin
      http = Net::HTTP.new(domain.name,80)
      response = http.request_get('/').code
      if response.to_i.between?(200,400)
        return 'up'
      else
         return 'update'
      end
      rescue
        return 'down'
      end
    end
end
