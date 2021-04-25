# rubocop: disable Lint/UnreachableLoop
module UsersHelper
  def attended_event(event)
    return 'The user doesnt attended any event' if event.attended_events.empty?
  end

  def created_event(event)
    if event.empty?
      "You didn't create any event"
    else
      event.each do |ev|
        return ev.description
      end
    end
  end

  def past_event(event)
    if event.empty?
      'There is no past event attended'
    else
      event.each do |eve|
        return eve.description
      end
    end
  end

  def up_coming(event)
    if event.empty?
      'There is no past event attended'
    else
      event.each do |even|
        return even.description
      end
    end
  end
end

# rubocop: enable Lint/UnreachableLoop
