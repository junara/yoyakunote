calendar = ::Icalendar::Calendar.new
# calendar.append_custom_property('X-WR-CALNAME;VALUE=TEXT', 'テスト')
event = ::Icalendar::Event.new
event.created = @reservation.created_at
event.description = 'http://yoyakunote.herokuapp.com' + item_path(uuid: @item.uuid)
event.dtstart = ::Icalendar::Values::DateTime.new(@reservation.start_datetime)
event.dtend = ::Icalendar::Values::DateTime.new(@reservation.end_datetime)
event.summary = @item.name + '_' + @reservation.name
event.uid = @reservation.uuid.to_s
calendar.add_event(event)
calendar.publish
headers['Content-Type'] = 'text/calendar; charset=UTF-8'
render text: calendar.to_ical
