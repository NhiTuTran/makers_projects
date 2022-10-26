# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

def valid?(password)
    s_char = (password.include?("!") || password.include?("@") || password.include?("$") || password.include?("%") || password.include?("&"))
    return password.length >= 8 && s_char
end
