def seed_users_and_attrs
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
      bio: Faker::Movies::Lebowski.quote,
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
