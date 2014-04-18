module NotesHelper
  def table_tag(hash)
    rows = []
    hash.each do |label, content|
      rows << table_row(label,  content)
    end
    content_tag(:table, rows.reduce(:+))
  end

  #assumes that the first column is the label
  def table_row(*columns)
    label = content_tag(:td, columns.shift, class:"label") 
    columns = columns.map { |e| content_tag(:td, e) }
    seperator = content_tag(:td, ":", class: "seperator")
    content_tag(:tr, label + seperator + columns.reduce(:+))
  end

  def labeled_list_tag(hash)
    hash.map do |key, value|
      content = content_tag(:h3, key)
      content += list_tag(value)
      content_tag(:div, content)
    end.reduce(:+)
  end

  def list_tag(array)
    content_tag(:ul, array_to_tag(array), class: "list")
  end

  def array_to_tag(array)
    tags = array.map { |content| content_tag(:li, content) }
    tags.reduce(:+)
  end
end
