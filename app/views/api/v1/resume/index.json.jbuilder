json.array! @students.each do |student|
json.partial! "display.json.jbuilder", student: student
end