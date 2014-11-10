# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# for future ref: add descrption or links of tasks completed for further research for users (on show.html.erb)
events = Event.create([
	{event: "Breath! Go do something active outdoors! Disconnect from your screen every once in awhile, but don't forget to update me when you're back!", digit: 0, time: 0, comment: ""},
	{event: "Recycle a bottle after a meal. If you don't have a bottle with you, recyle a bottle for someone nearby!", digit: 1, time: 0, comment: ""},
	{event: "Take some time to give your parents or relatives a call! Yea, your life might be busy, but family is important!", digit: 2, time: 0, comment: ""},
	{event: "Give a compliment to the next person you see! Even the smallest compliment can brighten someone's day, don't you agree?", digit: 3, time: 0, comment: ""},
	{event: "Invite your friends out for a meal! It's always nice to be in good company while eating!", digit: 4, time: 0, comment: ""},
	{event: "You get to decide this time!! Do something positive! It can be anything, just be creative!", digit: 5, time: 0, comment: "Give back to your community! Donate things you have sitting around that might be useful to others!"},
	{event: "Go do something fun! Roller coasters, anyone?!!!", digit: 6, time: 0, comment: ""},
	{event: "Wash your car!! Don't have one? I'm sure your parents wouldn't mind if you offered to wash theirs!", digit: 7, time: 0, comment: ""}

	])

userprofiles = Userprofile.create([
{name: "User1", event: "task1", comment: "comment"}
	])