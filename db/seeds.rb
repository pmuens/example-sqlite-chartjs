for i in 1..20000 do
  dataset = Dataset.create(
    {
      one: rand(1..100),
      two: rand(1..100),
      three: rand(1..100),
      four: rand(1..100),
      five: rand(1..100),
      six: rand(1..100),
      seven: rand(1..100),
      eight: rand(1..100),
      nine: rand(1..100),
      ten: rand(1..100)
    }
  )
end