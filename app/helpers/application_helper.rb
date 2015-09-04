module ApplicationHelper
  def boolean_to_text(boolean)
    boolean ? 'Definitely' : 'Not at all'
  end
end
