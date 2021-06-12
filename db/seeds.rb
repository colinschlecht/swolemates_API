#! Note - Location for users is provided via a gem that takes a second to run. This seed file takes a while to process, so I added a logger in config/application.rb to show that it isn't frozen.
#! Also Note - Location is hard coded to "Seattle.". You can run the seed file with another city name and it will generate users nearby using that city's latitude and longitude.

User.destroy_all

def seed_users_and_attrs
  gym_quotes = ["When my body shouts ‘STOP’, my mind screams ‘NEVER’.",
                "Excuses don’t kill the fat, exercises do.",
                "If you have time for Facebook, you have time for exercise.",
                "A year from now, you’ll wish you had started today.",
                "Fitness is not about being better than someone else, it’s about being better than you used to be.",
                "Change your body by changing your thoughts.",
                "Never say the sky’s the limit when there are footprints on the moon.",
                "Fall in love with taking care of your body.",
                "A 1-hour workout is 4% of your day. #noexcuses",
                "Being defeated is often a temporary condition. Giving up is what makes it permanent.",
                "Respect your body. It’s the only one you get.",
                "A healthy lifestyle is something we refine over time – not overnight.",
                "Good is not enough if better is possible.",
                "The best project you will ever work on is you.",
                "Today I will do what others won’t, so tomorrow I can accomplish what others can’t.",
                "The secret to getting ahead is getting started.",
                "Push harder than yesterday if you want a different tomorrow.",
                "She believed she could, so she did.",
                "Pain is weakness leaving the body.",
                "Hard work beats talent when talent doesn’t work hard.",
                "It always seems impossible until it’s done.",
                "The body achieves what the mind believes.",
                "Of all the people on the planet, you talk to yourself more than anyone… make sure you’re saying the right things.",
                "Don’t stop now.",
                "You are confined only by the walls you build yourself.",
                "Exercise is king. Nutrition is queen. Put them together and you have got a kingdom – Jack Lalanne.",
                "It is health that is real wealth – Gandhi.",
                "The decent method you follow is better than the perfect method you quit – Tim Ferris.",
                "Just remember the letter ‘S’: salads, stir-fries, scrambles, soups, smoothies, and sushi. You can’t go wrong with the letter ‘S’ – Harley Pasternak.",
                "Progress, not perfection – Kimberly Snyder.",
                "The quality of your sleep depends on the quality of your day – Deepak Chopra.",
                "Take care of your body, it’s the only place you have to live – Jim Rohn.",
                "Get comfortable with being uncomfortable! – Jillian Michaels.",
                "You miss 100% of the shots you never take – Wayne Gretzky.",
                "Continuous improvement is better than delayed perfection – Mark Twain.",
                "When you start eating food without labels, you no longer need to count the calories – Amanda Kraft.",
                "You can’t stop waves, but you can learn how to surf – John Kabat-Zinn.",
                "Why are you stopping? You think I can’t see you? – Shaun T",
                "We are what we repeatedly do. Excellence, then, is not an act, but a habit. – Aristotle.",
                "Eat food, not too much, mostly plants – Michael Pollan.",
                "With great size comes great responsibility.",
                "There are no shortcuts – everything is reps, reps, reps.",
                "You shall gain, but you shall pay with sweat, blood, and vomit.",
                "Life´s too short to be small.",
                "I’m not on steroids, but thanks for asking…",
                "Everybody wants to be a bodybuilder but nobody wants to lift heavy weights!",
                "I don’t do this to be healthy – I do this to get big muscles.",
                "My warmup is your workout.",
                "I got 99 problems but a BENCH ain’t one.",
                "If it wasn’t hard, everyone would do it."]

  1000.times do
    random_boolean = [true, false]
    random_gender = ["male",
                     "female",
                     "non_binary"]
    #! Note - Location is hard coded to "Seattle.".
    results = Geocoder.search("Seattle")
    lat = results.first.coordinates[0]
    long = results.first.coordinates[1]

    lat_long = RandomLocation.near_by(lat, long, 100000)
    seed_lat = lat_long[0]
    seed_long = lat_long[1]

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
      gender: random_gender.sample,
      diet: Diet.create(
        keto: random_boolean.sample,
        low_carb: random_boolean.sample,
        vegan: random_boolean.sample,
        vegetarian: random_boolean.sample,
        pescatarian: random_boolean.sample,
        alkaline: random_boolean.sample,
        raw_food: random_boolean.sample,
        intermittent_fasting: random_boolean.sample,
        paleo: random_boolean.sample,
        clean_eating: random_boolean.sample,
        mediterranean: random_boolean.sample,
      ),
      exercise_discipline: ExerciseDiscipline.create(
        cardio: random_boolean.sample,
        muscle_strengthening: random_boolean.sample,
        aerobic: random_boolean.sample,

      ),
      exercise_time: ExerciseTime.create(
        early_morning: random_boolean.sample,
        morning: random_boolean.sample,
        afternoon: random_boolean.sample,
        early_evening: random_boolean.sample,
        late_evening: random_boolean.sample,
        late_night: random_boolean.sample,

      ),
      gender_preference: GenderPreference.create(
        male: random_boolean.sample,
        female: random_boolean.sample,
        non_binary: random_boolean.sample,
        none: random_boolean.sample,
      ),
      location: Location.create(
        latitude: seed_lat,
        longitude: seed_long,
      ),
      music_preference: MusicPreference.create(
        rock: random_boolean.sample,
        techno: random_boolean.sample,
        rap: random_boolean.sample,
        country: random_boolean.sample,
        pop: random_boolean.sample,
        alternative: random_boolean.sample,
        classical: random_boolean.sample,
        funk: random_boolean.sample,
        latin: random_boolean.sample,
        jazz: random_boolean.sample,
        none: random_boolean.sample,
      ),
    )
  end
end

seed_users_and_attrs
