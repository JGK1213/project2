# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# for future ref: add descrption or links of tasks completed for further research for users (on show.html.erb)
events = Event.create([
	{name: "User1", event: "task1", digit: 0, time: 0, comment: ""},
	{name: "User2", event: "task2", digit: 1, time: 0, comment: ""},
	{name: "User3", event: "task3", digit: 2, time: 0, comment: ""},
	{name: "User4", event: "task4", digit: 3, time: 0, comment: ""},
	{name: "User5", event: "task5", digit: 4, time: 0, comment: ""},
	{name: "User6", event: "task6", digit: 5, time: 0, comment: ""},
	{name: "User7", event: "task7", digit: 6, time: 0, comment: ""},
	{name: "User8", event: "task8", digit: 7, time: 0, comment: ""}

	])

userprofiles = Userprofile.create([
{name: "User1", event: "task1", comment: "comment"}
	])