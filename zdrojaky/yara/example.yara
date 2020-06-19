rule Example {
	meta:
		description = "DP ukazka pravidla"
		author = "Jan Hložek"
	strings:
		$text1 = "hello"	//hello string
		$text2 = {68 69}	//hi string
	condition:
		$text1 or $text2
}