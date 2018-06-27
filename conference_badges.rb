# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end


def batch_badge_creator(speakers)
  speakers.map { |names| "Hello, my name is #{names}." }
end


def assign_rooms(speakers)
  speakers.map { |names|
   names.each_with_index { |attendees, index|
   "Hello, #{attendees}! You'll be assigned to room #{index + 1}!"}}
end


=begin
def assign_rooms(speakers)
  new_array = []
  speakers.each_with_index do |names, index| 
  new_array << "Hello, #{names}! You'll be assigned to room #{index + 1}!"
  end
return new_array
end
=end


def printer(speakers)
  batch_badge_creator(speakers).each { |badges| puts badges }
  assign_rooms(speakers).each { |rooms| puts rooms}
end
