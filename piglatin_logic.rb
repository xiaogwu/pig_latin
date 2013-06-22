input_string = "Hello World"

index = input_string.index(/[aeiouAEIOU]/)

if input_string[0] =~ /[aeiouAEIOU]/
  p input_string.concat("way").capitalize
  
else

sub_string = input_string[0,index]


pig_string = input_string[index, input_string.length - 1].concat(sub_string).concat("ay").capitalize

p pig_string
end

