def OutputInLCDView(input_number)
          
          @NumbersCalcView = {
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
          
          @Buffer = input_number
          
          def CreateOutArray()
               @Output = []
               while(@Buffer>0)
                    @Output << @NumbersCalcView[@Buffer%10]
                    @Buffer = @Buffer / 10;
               end
          end

          def TransposeOut()
               puts(@Output.reverse.transpose[0].join(" "))
               puts(@Output.reverse.transpose[1].join(" "))
               puts(@Output.reverse.transpose[2].join(" "))
          end
     #body
     CreateOutArray()
     TransposeOut()
end

@InputNumber = ARGV[0].to_i
OutputInLCDView(@InputNumber)