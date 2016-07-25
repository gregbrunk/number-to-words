WORD_HASH = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six",
	7 => "seven",
	8 => "eight",
	9 => "nine",
	10 => "ten",
	11 => "eleven",
	12 => "twelve",
	13 => "thirteen",
	14 => "fourteen",
	15 => "fifteen",
	16 => "sixteen",
	17 => "seventeen",
	18 => "eighteen",
	19 => "nineteen",
	20 => "twenty",
	30 => "thirty",
	40 => "forty",
	50 => "fifty",
	60 => "sixty",
	70 => "seventy",
	80 => "eighty",
	90 => "ninety",
	100 => "one hundred"
}

def to_words(i)
	length = i.to_s.size
	if i <= 20
		return WORD_HASH[i]
	elsif i%10 == 0 
		return WORD_HASH[i]
	else
		array = i.to_s.split('')
		first_int = array[0].to_i
		ten_value = first_int*10
		remainder = i%10
		return WORD_HASH[ten_value] + "-" + WORD_HASH[remainder]
	end
end