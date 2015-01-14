#!/usr/bin/ruby

# refined output of this hasty script in excel
require 'rubygems'
require 'rubyXL'

$len = 889 
$ca = 8 # Community Area column index

out = File.open("output.txt", "w+")
out.puts("CA #\tPOP\tTOT")
workbook = RubyXL::Parser.parse("race_data.xlsx")

worksheet = workbook[0]

for i in 0...889 do
    if worksheet[i][8].value.to_s.length == 5
        out.print(worksheet[i][8].value.to_s)
        out.print("\t")
        out.print(worksheet[i][9].value.to_s)
        out.print("\t")
        out.print(worksheet[i][10].value.to_s)
        out.print("\t")
        out.print(worksheet[i][11].value.to_s)
        out.print("\t")
        out.print(worksheet[i][12].value.to_s)
        out.print("\t")
        out.print(worksheet[i][13].value.to_s)
        out.print("\t")
        out.print(worksheet[i][14].value.to_s)
        out.print("\t")
        out.print(worksheet[i][15].value.to_s)
        out.print("\t")
        out.puts(worksheet[i][16].value.to_s)
    end
end
