class PasswordManager2
  def initialize
    @list = {}
  end
  
  def add(service, password)
    if @list.has_value?(password)
      return "ERROR: Passwords must be unique"
    end

    if @list.has_key?(service)
      return "ERROR: Service names must be unique"
    end

    @list[service] = password
  end

  def remove(service)
    @list.delete_if { |service, pasword| service == service }
  end

  def services
    return @list.keys
  end

  def sort_by(str)
    if str == "service"
      return @list.keys.sort
    end

    if str == "added_on"
      return @list.keys.reverse
    end
  end

  def password_for(service)
    return @list[service]
  end

  def update(service, password)
    unless @list.has_value?(password)
      @list[service] = password
    end
  end
end
