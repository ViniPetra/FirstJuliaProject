function Greeting(name::String)
  return "Olá, $name. Este é meu primeiro projeto em Julia"
end

function Bhaskara(a::Int, b::Int, c::Int)
  delta = (b^2)-(4*a*c)
  if delta < 0
    println("O delta ficou negativo. Impossível calcular")
    return
  else println("Delta = $delta")
  end
  res1 = (-b+sqrt(delta))/2a
  res2 = (-b-sqrt(delta))/2a
  return res1,res2
end

println("Escolha 3 números separados por vírgula: ")
values = readline()
valuesParsed = split(values, ",")
valuesInt = Int[]

for x in valuesParsed
  push!(valuesInt, parse(Int, x))
end

println(Bhaskara(valuesInt[1], valuesInt[2], valuesInt[3]))