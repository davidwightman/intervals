# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({name:"brian", password:"12345", pic:"http://i.giphy.com/nMNzebXyK6fkY.gif"})

Question.create({audio: "Maj2nd_ascend_c4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_ascend_c#4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_ascend_d4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_ascend_d#4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_ascend_e4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_descend_c4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_descend_c#4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_descend_d4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_descend_d#4.mp3", answer: "Major 2nd"})
Question.create({audio: "Maj2nd_descend_e4.mp3", answer: "Major 2nd"})
Question.create({audio: "min2nd_ascend_c4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_ascend_c#4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_ascend_d4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_ascend_d#4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_ascend_e4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_descend_c4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_descend_c#4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_descend_d4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_descend_d#4.mp3", answer: "minor 2nd"})
Question.create({audio: "min2nd_descend_e4.mp3", answer: "minor 2nd"})