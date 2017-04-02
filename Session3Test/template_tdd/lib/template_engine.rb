class Template_reader
  def set_template template
    @template = template

  end

  def get_template_fields
    temp_array = @template.scan(/{{[a-zA-Z]*}}/)
    return_array = []
    temp_array.each do |fixme|
      return_array << fixme = fixme.gsub("{", "").gsub("}", "")
    end
    return return_array
  end

  def run_template input_hash
    temp_template = @template
    input_hash.each_pair do |key, value|
      temp_template = temp_template.gsub("{{" + key + "}}", value)
    end
    return temp_template
  end
end
