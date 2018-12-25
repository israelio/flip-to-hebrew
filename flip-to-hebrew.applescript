on run {input, parameters}
	set input to changeCaseOfText(input as string)
	return input
end run

on changeCaseOfText(theText)
	set theComparisonCharacters to "qazwsxedcrfvtgbyhnujmik,ol.p;/QAZWSXEDCRFVTGBYHNUJMIK<OL>P:?"
	set theSourceCharacters to "/שז׳דסקגברכהאענטימוחצןלתםךץפף./שז׳דסקגברכהאענטימוחצןלתםךץפף."

	set theAlteredText to ""
	repeat with aCharacter in theText
		set theOffset to offset of aCharacter in theComparisonCharacters
		if theOffset is not 0 then
			set theAlteredText to (theAlteredText & character theOffset of theSourceCharacters) as string
		else
			set theAlteredText to (theAlteredText & aCharacter) as string
		end if
	end repeat
	return theAlteredText
end changeCaseOfText
