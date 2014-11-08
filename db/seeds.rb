event_1 = Event.create do |e|
  e.title = "Air purifer broke down"
  e.body = "Oh no, the air purifier broke down. If you don't fix it soon, the crew will start to suffocate. What do you do?"
  e.choice_1 = "Replace the part."
  e.choice_2 = "Try to have one of your mechanics fix it."
end

event_2 = Event.create do |e|
  e.title = "You need a self-sustaining ship."
  e.body = "Your ship needs energy, food, air, and water for everyone on board."
  e.choice_1 = "Incorporate organic matter into the ship's structure and use the Sun's energy to produce biofuel and a sustainable source of food."
  e.choice_2 = "Grow a variety of food in sealed incubators and incorporate organic spaceships with fields, lakes and mountains."
end

event_3 = Event.create do |e|
  e.title = "Forced existence on a ship."
  e.body = "Moral quandary arises regarding how intermediate generations (those destined to be born, reproduce, and die in transit, without actually seeing tangible results of their efforts) might feel."
  e.choice_1 = "Provide psychological counseling to members on ship."
  e.choice_2 = "Isolate those who pose a threat."
end

event_4 = Event.create do |e|
  e.title = "There are health threats from cosmic rays."
  e.body = "Cosmic rays, along with radiation can damage DNA, increasing the risk of cancer, cataracts, neurological disorders, and non-cancer mortality risks."
  e.choice_1 = "Surround the crewed parts of the ship with thick shielding, such as maintained ice."
  e.choice_2 = "Take a drugs, such as retinoids, that mimic or enhance the body's natural capacity to repair damage caused by radiation."
end

event_5 = Event.create do |e|
  e.title = "Spaceship damage"
  e.body = "Impact from space debris, meteroids and dust will affect the condition of your ship."
  e.choice_1 = "Develop a method to avert meteoroid strikes, since space habitat does not possess a sheltering atmosphere."
  e.choice_2 = "Have a radar that will map the trajectory of debris and other man-made objects."
end

event_6 = Event.create do |e|
  e.title = "Tiny atoms scattered throughout space."
  e.body = "Tiny atoms in space would tear through even the strongest steel. Tiny  pinholes going right through a ship are hardly a good thing."
  e.choice_1 = "Humans or machines constantly patch the damage, which would require impractically large amounts of repair material to be brought."
  e.choice_2 = "Build a ship made of elastic material which self-heals."
end

event_7 = Event.create do |e|
  e.title = "Human's dependency on gravity."
  e.body = "After a few weeks or months our bones become brittle and our muscles fatigue, with much more unpleasant long-term effects."
  e.choice_1 = "Combat this with various exercises and diets, but after years or decades in space the human body becomes permanently damaged."
  e.choice_2 = "Acceleration from gravity can be induced by rotating the spaceship quickly. Unfortunately, this requires huge amounts of energy and fuel, and causes nausea in the short-term."
end


event_8 = Event.create do |e|
  e.title = "Don’t touch me"
  e.body = "Couple of people on the ship seem to have been infected by a deadly disease which is also contagious. If you keep them on board, more people will be infected and you will lose a certain amount of your population. However if you throw them off your ship, people will question your leadership. Choose wisely..."
  e.choice_1 = "Let the infected stay and see if you can find a cure."
  e.choice_2 = "Throw the infected off the ship to save the others."
end

event_9 = Event.create do |e|
  e.title = "Social Breakdown"
  e.body = "After traveling for a long period of time, there is a breakdown in social structure. A mutiny has started and you must handle it quick!"
  e.choice_1 = "Find all the mutineers and throw them out of your ship."
  e.choice_2 = "Try to reason with them and meet in the middle."
end

event_10 = Event.create do |e|
  e.title = "The pull is strong with this one..."
  e.body = "You see a planet closing in fast. You find out the planet’s gravity pull is too strong, and if you don’t respond quickly your ship will crash into the planet."
  e.choice_1 = "Burn a certain amount of fuel to escape the gravitational pull."
  e.choice_2 = "Try landing on the planet safely, and see if it is habitable."
end

event_11 = Event.create do |e|
  e.title = "So close yet so far..."
  e.body = "You check your inventory and find out that you’re low on resources. You know that it will be a while before you reach your final destination. There is a planet that is closer and you might be able to gather resources from there and get back on the road. What is your next move?"
  e.choice_1 = "Land on the closer planet and see there are any resources you can gather."
  e.choice_2 = "Keep pushing through and see if you can make it to your final destination without running out of resources."
end