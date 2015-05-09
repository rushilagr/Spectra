# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
  {body: "A series of 3 print ads created for Union Bank by Mudra Communications to promote one of their services. What service is being promoted via these cheeky ads? ", kind: 1, answer: "Correct Answer 1"},
  {body: "This online hospitality startup underwent a rebrand in July 2014 and released its new logo. They explained the concept behind it by releasing this sketch. The logo faced a lot of criticism on social media due to its design. Name the startup.", kind: 2, answer: "Correct Answer 2"},
  {body: "X is a puzzle video game programmed and designed by Alexy Pajitnov in the Soviet Union in 1984. Pajitnov derived X's name by combining two words: A from the Greek numerical prefix for the 5th whole number and B, which was Pajitnov's favourite sport. 
i.e. X = A + B. 

The X effect occurs when people devote a significant amount of time and attention to an activity that it begins to overshadow their thoughts, metal images and dreams. ", kind: 1, answer: "Correct Answer 3"},
		
  {body: "Thou shalt not simply trot out thy usual shtick.
Thou shalt dream a great dream, or show forth a wondrous new thing, or share something thou hast never shared before.
Thou shalt reveal thy curiosity and thy passion.
Thou shalt tell a story.
Thou shalt freely comment on the utterances of other speakers for the sake of blessed connection and exquisite controversy.
Thou shalt not flaunt thine ego. Be thou vulnerable. Speak of thy failure as well as thy success.
Thou shalt not sell from the stage: neither thy company, thy goods, thy writings, nor thy desperate need for funding; lest thou be cast aside into outer darkness.
Thou shalt remember all the while: laughter is good.
Thou shalt not read thy speech.
Thou shalt not steal the time of them that follow thee.", kind: 2, answer: "Correct Answer 4"},
	
  {body: "“X Problem” is a phrase originally used in social planning to describe a problem that is difficult or impossible to solve because of incomplete, contradictory, and changing requirements that are often difficult to recognize. The term “X” is used to denote resistance to resolution, rather than evil. Moreover, because of complex interdependencies, the effort to solve one aspect of a “X” may reveal or create other problems.  ", kind: 1, answer: "Correct Answer 5"},
	
  {body: "This is the default computer wallpaper of Microsoft's Windows XP. It was clicked by former National Geographic photographer Charles O'Rear. He sold it to Corbis for use as a stock photo. Several years later, Microsoft engineers chose a digitised version of the image and licensed it from O'Rear. 
Since it was taken, the landscape in it has changed, with grapevines planted on the hill and field in the foreground(pictured onscreen), making O'Rear's image impossible to duplicate for the time being. 
By what 5 letter word is this image known? HINT: the word means “reach a state of perfect happiness, oblivious of everything else.”", kind: 1, answer: "Correct Answer 6"},
	
  {body: "The name of an entrepreneur has been censored here. He is still alive, name him. ", kind: 1, answer: "Correct Answer 7"},

  {body: "Logo for which project. ", kind: 1, answer: "Correct Answer 8"},

  {body: "Time Magazine, July 16th 2012, Outllok Magazine India followed suite on 30th July 2012. The text has been censored, what was it? ", kind: 1, answer: "Correct Answer 9"}

])

User.create([
  {name: "Rushil", email: "r@r.com", password: "groupsite"}
])

Answer.create([
  {body: "Your answer 1", question_id: 1, user_id: 1},
  {body: "Your answer 2", question_id: 2, user_id: 1}
])

Image.create([
  {question_id: nil, created_at: "2015-05-09 14:03:39", updated_at: "2015-05-09 14:03:39", file_file_name: "Q1_1.png", file_content_type: "image/png", file_file_size: 1446936, file_updated_at: "2015-05-09 14:03:39"},
  {question_id: nil, created_at: "2015-05-09 14:03:39", updated_at: "2015-05-09 14:03:39", file_file_name: "Q1_1.png", file_content_type: "image/png", file_file_size: 1446936, file_updated_at: "2015-05-09 14:03:39"},
  {question_id: 1, created_at: "2015-05-09 14:03:39", updated_at: "2015-05-09 14:03:39", file_file_name: "Q1_1.png", file_content_type: "image/png", file_file_size: 1446936, file_updated_at: "2015-05-09 14:03:39"},
  {question_id: 1, created_at: "2015-05-09 14:04:25", updated_at: "2015-05-09 14:04:25", file_file_name: "Q1_2.png", file_content_type: "image/png", file_file_size: 1583354, file_updated_at: "2015-05-09 14:04:24"},
  {question_id: 2, created_at: "2015-05-09 14:05:04", updated_at: "2015-05-09 14:05:04", file_file_name: "Q2_1.png", file_content_type: "image/png", file_file_size: 165738, file_updated_at: "2015-05-09 14:05:04"},
  {question_id: 6, created_at: "2015-05-09 14:06:23", updated_at: "2015-05-09 14:06:23", file_file_name: "Q6_1.png", file_content_type: "image/png", file_file_size: 1972383, file_updated_at: "2015-05-09 14:06:22"},
  {question_id: 7, created_at: "2015-05-09 14:07:39", updated_at: "2015-05-09 14:07:39", file_file_name: "Q7_1.png", file_content_type: "image/png", file_file_size: 1778585, file_updated_at: "2015-05-09 14:07:38"},
  {question_id: 8, created_at: "2015-05-09 14:09:04", updated_at: "2015-05-09 14:09:04", file_file_name: "Q8_1.png", file_content_type: "image/png", file_file_size: 135584, file_updated_at: "2015-05-09 14:09:04"},
  {question_id: 9, created_at: "2015-05-09 14:09:18", updated_at: "2015-05-09 14:09:18", file_file_name: "Q9_1.png", file_content_type: "image/png", file_file_size: 1125508, file_updated_at: "2015-05-09 14:09:18"}
])