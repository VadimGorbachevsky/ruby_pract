@NumbersCalcView={
1 => ['   ','  |','  |'],
2 => [' _ ',' _|','|_ '],
3 => [' _ ',' _|',' _|'],
4 => ['   ','|_|','  |'],
5 => [' _ ','|_ ',' _|'],
6 => [' _ ','|_ ','|_|'],
7 => [' _ ','  |','  |'],
8 => [' _ ','|_|','|_|'],
9 => [' _ ','|_|',' _|'],
0 => [' _ ','| |','|_|']
}
@Output = []
@InputNumber = 133563413290
@Buffer = @InputNumber
while(@Buffer>0)
     @Output << @NumbersCalcView[@Buffer%10]
     @Buffer = @Buffer / 10;
end
puts(@Output.reverse.transpose[0].join(" "))
puts(@Output.reverse.transpose[1].join(" "))
puts(@Output.reverse.transpose[2].join(" "))