module HW1
import StdEnv

/*
Ex 1: 
 A leap year is a year that contains an additional day, February 29th, making it 366 days long instead of the usual 365 days. 
 Leap years are necessary to keep our calendar in alignment with the Earth's revolutions around the Sun.

 A year is a leap year if the following conditions are satisfied: 

 The year is multiple of 400.
 The year is a multiple of 4 and not a multiple of 100.
 
 Please write function(s) to return 
 how many year(s) later is the next leap year when the year is not a leap year,
 (!Ignore the situation that the next leap year is in more than 4 years)
 print "This year is a leap year.",when the year is a leap year.
 
*/

/*
leapyear :: Int -> String
leapyear year
| isLeapYear year = "This year is a leap year."
| otherwise = toString(findNextLeapYear year - year)

isLeapYear :: Int -> Bool
isLeapYear year = (year rem 400 == 0) || ((year rem 4 == 0) && (year rem 100 <> 0))

findNextLeapYear :: Int -> Int
findNextLeapYear year
| isLeapYear year = year
| otherwise = findNextLeapYear (year + 1)
*/

//Start = leapyear 2024 //"This year is a leap year."
//Start = leapyear 2023 //1
//Start = leapyear 2026 //2
//Start = leapyear 2000 //"This year is a leap year."
//Start = leapyear 2100 //4

/*
 Ex 2:
 Define the Area Calculator which can calculate the area of Circle,Square,Equilateral triangle 
 ('c','s','t').Please return the right results.
 If meeting other characters,return 0.
 
 If the character is 'c',given the diameter of a circle, find the area of the circle. pi=3.14
 If the character is 's',given the side lengths of a square, find the area of the square.
 If the character is 't',given the side lengths of a equilateral triangle, find the area of the equilateral triangle.
 The Square Root of Three=1.732
 */
 
/*
areacalculator :: Char Int -> Real
areacalculator shape size
| shape == 'c' = pi * (toReal size / 2.0) ^ 2.0
| shape == 's' = toReal (size ^ 2)
| shape == 't' = (toReal(size ^ 2) * sqrt3) / 4.0
| otherwise = 0.0
where
	pi = 3.14
	sqrt3 = 1.732
*/

//Start=areacalculator 'c' 2 //3.14
//Start=areacalculator 's' 5  //25
//Start=areacalculator 't' 2 //1.732
