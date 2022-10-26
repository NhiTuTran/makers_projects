def valid?(password)
  s_char = (password.include?("!") || password.include?("@") || password.include?("$") || password.include?("%") || password.include?("&"))
  return password.length >= 8 && s_char
end

class PasswordManager
  def initialize
    @list = {}
  end
      
  def add(service, password)
    if valid?(password)
      @list[service] = password
    end
  end
    
  def password_for(service)
    return @list[service]
  end
    
  def services
    return @list.keys
  end

  def show
    return @list
  end
end
