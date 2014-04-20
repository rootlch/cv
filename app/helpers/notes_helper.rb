module NotesHelper

  def note(title, options = {})
    note_header(title, options[:id]) + content_tag(:div, yield, {
      id: "#{options[:id]}-target", 
      class: "collapse in"
    })
  end

  def note_header(title, id)
    content = note_header_toggle(id) 
    content += content_tag(:h2, title, id: id)
    content_tag(:div, content)
  end

  def note_header_toggle(id)
    content_tag(:button, "Toggle", {
      class: "toggle btn btn-default", 
      "data-toggle" => "collapse", 
      "data-target" => "\##{id}-target"
    })
  end

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
    columns = columns.map { |e| content_tag(:td, format_tag(e)) }
    seperator = content_tag(:td, ":", class: "seperator")
    content_tag(:tr, label + seperator + columns.reduce(:+))
  end

  def format_tag(content)
    if url?(content)
      link_to content, content
    else
      content
    end
  end

  def url?(content)
    if (content =~ URI.regexp("http") || content =~ URI.regexp("https"))
      true
    else
      false
    end
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
