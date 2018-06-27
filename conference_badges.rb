# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end


def batch_badge_creator(speakers)
  speakers.map { |names| "Hello, my name is #{names}." }
end


=begin
#code below will not work because each_with_index operates on #arrays not single elements which is what names is parsing, the #syntax is correct though

def assign_rooms(speakers)
  speakers.map { |names|
   names.each_with_index { |attendees, index|
   "Hello, #{attendees}! You'll be assigned to room #{index + 1}!"}}
end

=end


def assign_rooms(speakers)
  new_array = []
  speakers.each_with_index do |names, index| 
  new_array << "Hello, #{names}! You'll be assigned to room #{index + 1}!"
  end
return new_array
end



def printer(speakers)
  batch_badge_creator(speakers).each { |badges| puts badges }
  assign_rooms(speakers).each { |rooms| puts rooms}
end
