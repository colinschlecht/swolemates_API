def seed_users_and_attrs
gym_quotes = ['When my body shouts ‘STOP’, my mind screams ‘NEVER’.',
'Excuses don’t kill the fat, exercises do.',
'If you have time for Facebook, you have time for exercise.',
'A year from now, you’ll wish you had started today.',
'Fitness is not about being better than someone else, it’s about being better than you used to be.',
'Change your body by changing your thoughts.',
'Never say the sky’s the limit when there are footprints on the moon.',
'Fall in love with taking care of your body.',
'A 1-hour workout is 4% of your day. #noexcuses',
'Being defeated is often a temporary condition. Giving up is what makes it permanent.',
'Respect your body. It’s the only one you get.',
'A healthy lifestyle is something we refine over time – not overnight.',
'Good is not enough if better is possible.',
'The best project you will ever work on is you.',
'Today I will do what others won’t, so tomorrow I can accomplish what others can’t.',
'The secret to getting ahead is getting started.',
'Push harder than yesterday if you want a different tomorrow.',
'She believed she could, so she did.',
'Pain is weakness leaving the body.',
'Hard work beats talent when talent doesn’t work hard.',
'It always seems impossible until it’s done.',
'The body achieves what the mind believes.',
'Of all the people on the planet, you talk to yourself more than anyone… make sure you’re saying the right things.',
'Don’t stop now.',
'You are confined only by the walls you build yourself.',
'Exercise is king. Nutrition is queen. Put them together and you have got a kingdom – Jack Lalanne.',
'It is health that is real wealth – Gandhi.',
'The decent method you follow is better than the perfect method you quit – Tim Ferris.',
'Just remember the letter ‘S’: salads, stir-fries, scrambles, soups, smoothies, and sushi. You can’t go wrong with the letter ‘S’ – Harley Pasternak.',
'Progress, not perfection – Kimberly Snyder.',
'The quality of your sleep depends on the quality of your day – Deepak Chopra.',
'Take care of your body, it’s the only place you have to live – Jim Rohn.',
'Get comfortable with being uncomfortable! – Jillian Michaels.',
'You miss 100% of the shots you never take – Wayne Gretzky.',
'Continuous improvement is better than delayed perfection – Mark Twain.',
'When you start eating food without labels, you no longer need to count the calories – Amanda Kraft.',
'You can’t stop waves, but you can learn how to surf – John Kabat-Zinn.',
'Why are you stopping? You think I can’t see you? – Shaun T',
'We are what we repeatedly do. Excellence, then, is not an act, but a habit. – Aristotle.',
'Eat food, not too much, mostly plants – Michael Pollan.',
'With great size comes great responsibility.',
'There are no shortcuts – everything is reps, reps, reps.',
'You shall gain, but you shall pay with sweat, blood, and vomit.',
'Life´s too short to be small.',
'I’m not on steroids, but thanks for asking…',
'Everybody wants to be a bodybuilder but nobody wants to lift heavy weights!',
'I don’t do this to be healthy – I do this to get big muscles.',
'My warmup is your workout.',
'I got 99 problems but a BENCH ain’t one.',
'If it wasn’t hard, everyone would do it.']



  1000.times do
    random_boolean = [true, false].sample
    random_gender = ["male",
                     "female",
                     "non_binary"].sample

    def generate
      pre = Faker::Name.prefix
      verb = Faker::Verb.past
      animal = Faker::Creature::Animal.name
      name = pre + verb.capitalize + animal.capitalize + rand(1..100).to_s
      newname = name.split(/[ ,.\/]/).join("").to_s
    end

    name = generate

    User.create(
      name: name,
      email: "#{name}@gmail.com",
      password_digest: "1234",
      bio: gym_quotes.sample,
      age: rand(18..100),
      gender: random_gender,
      diet: Diet.create(
        keto: random_boolean,
        low_carb: random_boolean,
        vegan: random_boolean,
        vegetarian: random_boolean,
        pescatarian: random_boolean,
        alkaline: random_boolean,
        raw_food: random_boolean,
        intermittent_fasting: random_boolean,
        paleo: random_boolean,
        clean_eating: random_boolean,
        mediterranean: random_boolean,
      ),
      exercise_discipline: ExerciseDiscipline.create(
        cardio: random_boolean,
        muscle_strengthening: random_boolean,
        aerobic: random_boolean,

      ),
      exercise_time: ExerciseTime.create(
        early_morning: random_boolean,
        morning: random_boolean,
        afternoon: random_boolean,
        early_evening: random_boolean,
        late_evening: random_boolean,
        late_night: random_boolean,

      ),
      gender_preference: GenderPreference.create(
        male: random_boolean,
        female: random_boolean,
        non_binary: random_boolean,
        none: random_boolean,
      ),
      location: Location.create(
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
      ),
      music_preference: MusicPreference.create(
        rock: random_boolean,
        techno: random_boolean,
        rap: random_boolean,
        country: random_boolean,
        pop: random_boolean,
        alternative: random_boolean,
        classical: random_boolean,
        funk: random_boolean,
        latin: random_boolean,
        jazz: random_boolean,
        none: random_boolean,
      ),
    )
  end
end

seed_users_and_attrs
