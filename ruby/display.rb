#!/usr/bin/ruby
#  --       --   --          --    --   --   --   --
# |  |   |    |    |  |  |  |     |       | |  | |  |
# |  |   |    |    |  |  |  |     |       | |  | |  |
#           --   --    --    --    --        --   --
# |  |   | |       |     |     |  |  |    | |  |    |
# |  |   | |       |     |     |  |  |    | |  |    |
#  --       --   --          --    --        --   --
def donus(a)
	cod = {
		0 => "12020 20201",
		1 => " 3030 3030 ",
		2 => "1303012 2 1",
		3 => "13030130301",
		4 => " 202013030 ",
		5 => "12424130301",
		6 => "12424120201",
		7 => "13030 3030 ",
		8 => "12020120201",
		9 => "12020130301",
	}
	y = []
	for c in cod[a.to_i].each_char
			y<<" |\n"   if c == "0"
			y<<" -- \n" if c == "1"
			y<<"| "     if c == "2"
			y<<"  "     if c == "3"
			y<<"  \n"   if c == "4"
			y<<"    \n" if c == " "
	end
	print y
end
if ARGV.length != 1 then
	print "kullanim #<{ARGV[0]}> <SAYI>"
	exit 0
end
donus(ARGV[0])

