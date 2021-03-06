module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "QNA"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Create an li tag with a bolded section, an emdash, then more text.
  def bold_list_item(bolded, description)
    "<li><strong>#{bolded}</strong> &mdash; #{description}</li>".html_safe
  end

  # Truncate text and end it with '...' if the length is greater than cutoff
  def truncate(text, cutoff = 50)
    text.length > cutoff ? "#{text[0..(cutoff - 3)]}..." : text
  end

end
