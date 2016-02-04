spanish_for_english = Course.find_by_name("Spanish")

spanish_basic_1 = Skill.create!(
  name: "Basic 1",
  course_id: spanish_for_english.id,
  tips_and_notes: "In this first skill, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
)
spanish_basic_2 = Skill.create!(
  name: "Basic 2",
  course_id: spanish_for_english.id,
  tips_and_notes: "This skill is going to focus on plurals, which are luckily pretty easy in Spanish. All you have to do is add an 's' or 'es', just like in English. One trick, though, is that in Spanish you also have to make the article plural. So the plural of 'la madre' is 'las madres' The plural of 'el padre' is 'los padres'. This is called \"gender agreement\", because the article has to reflect the gender of the noun it precedes. This is another thing you'll get used to with time, and the concept of agreement will come into play again once we start adjectives. Another thing to watch out for is that in Spanish the pluralizing 's' can't come after a consonant, so you need to put in an 'es' in such cases: it's 'las mujeres', not 'las mujers.' In Lesson 3, you'll learn that male is a sort of default gender for mixed-gender plurals–'el padre' singular means 'the father', but 'los padres' plural can mean either 'the fathers' or, if there are both fathers and mothers in the group, 'the parents', no matter how many mothers might be included. Okay, let's get to it!"
 )
# spanish_basic_3 = Skill.create!(
#   name: "Basic 1",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )
# spanish_basic_2 = Skill.create!(
#   name: "Basic 2",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )
# spanish_basic_1 = Skill.create!(
#   name: "Basic 1",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )
# spanish_basic_2 = Skill.create!(
#   name: "Basic 2",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )
# spanish_basic_1 = Skill.create!(
#   name: "Basic 1",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )
# spanish_basic_2 = Skill.create!(
#   name: "Basic 2",
#   course_id: spanish_for_english.id,
#   tips_and_notes: "For this first lesson, we're going to introduce an extremely important concept that is found in the majority of languages learned by English speakers in school: grammatical gender. Basically, every noun has a gender (male or female in Spanish) that serves as a way of categorizing the words. It can be a confusing concept at first, mainly because it isn't completely logical. Sure, some genders make sense: the word 'madre', mother, is in the female gender, for example. But so is the word 'camisa', which means shirt. The first seems pretty logical, but the second is hard to explain in terms of rationality. In some languages, gender really affects the grammar, but luckily for us, gender in Spanish mostly only affects which article to use before the noun. Where in English we have the word 'the', Spanish uses 'la' for female and 'el' for male. Likewise for 'a': Spanish has 'una' for female and 'un' for male. It's really something you just have to get used to. Whenever you learn a new noun, make sure to learn it along with its gender! That's how we make sure to present new words here. One last tip: male nouns often end in 'o', and female nouns often end in 'a.' There are a few other rules, and we'll get to them later. For now, good luck!"
# )

Dir[File.join(Rails.root, 'db', 'seeds', 'spanish_skills', 'skill_*_lessons', '*.rb')].sort.each { |seed| load seed }