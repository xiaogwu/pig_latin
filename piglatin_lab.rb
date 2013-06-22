require "./piglatintranslator"


# test1 = PigLatinTranslator.new("Hello World")
# test2 = PigLatinTranslator.new("Jackie")

# p test1.to_pig
# p test2.to_pig

firsttest = PigLatinTranslator.new("AJ")
secondtest = PigLatinTranslator.new("Jackie")
thirdtest = PigLatinTranslator.new("Apple")
fourthtest = PigLatinTranslator.new("Hello World")

p firsttest.to_pig.to_s
p secondtest.to_pig
p thirdtest.to_pig
p fourthtest.to_pig 


puts "Tests:"

if firsttest.to_pig.to_s == "Ajway"
  p "pass"
else
  p "fail"
end

if secondtest.to_pig == "Ackiejay"
  p "pass"
else
  p "fail"
end

if thirdtest.to_pig == "Appleway"
  p "pass"
else
  p "fail"
end

if fourthtest.to_pig == "Ellohay Orldway"
  p "pass"
else
  p "fail"
end