10.times do 
  Msg.create(
    title: Faker::Coffee.blend_name,
    body: Faker::GreekPhilosophers.quote
  )
end