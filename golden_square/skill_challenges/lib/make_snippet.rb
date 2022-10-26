def make_snippet(str)
  split_str = str.split(" ")
  if split_str.count <= 5
    return str
  else
    return split_str[0..4].join(" ") + "..."
  end
end