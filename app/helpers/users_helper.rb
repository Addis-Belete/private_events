module UsersHelper
  def attended_event(event)
    if event.attended_events.empty?
      return "The user doesnt attended any event"
    end
  end

  def created_event(event)
    if event.empty?
      return "You didn't create any event"
    else
      event.each do |event|
        return event.description
      end
    end
  end

  def past_event(event)
    if event.empty?
      return "There is no past event attended"
    else
      event.each do |event|
        return event.description
      end
    end
  end

  def up_coming(event)
    if event.empty?
      return "There is no past event attended"
    else
      event.each do |event|
        return event.description
      end
    end
  end
end
