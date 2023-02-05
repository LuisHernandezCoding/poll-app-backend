# We're using Faker to generate random emails, for testing
50.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

5.times do
  poll = Poll.create(question: Faker::Lorem.question, user: User.find(rand 1..50))
  4.times do
      poll.choices.create(choice_text: Faker::Lorem.sentence(word_count: 3))
  end
end

# 100.times do
#   poll = Poll.find(rand 1..5)
#   Vote.create(user: User.find(rand 1..50), poll: poll, choice: poll.choices.sample)
# end

Poll.all.each do |poll|
  User.all.each do |user|
    Vote.create(user: user, poll: poll, choice: poll.choices.sample)
  end
end