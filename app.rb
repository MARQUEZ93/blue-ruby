def custom_gsub(str)
  return str.to_s.gsub(/[a-zA-Z0-9]/, "*")
end 

def blue_question(arr, forbidden_list)
  dup_arr = arr.dup
  dup_arr.each do |item|
    item.each do |k, v|
      if forbidden_list.include?(k.to_s)
        item[k] = v.is_a?(Array) ? v.map { |el| custom_gsub(el) } : custom_gsub(v)
      end
    end
  end
end
