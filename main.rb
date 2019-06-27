print "Welcome to the Walk-A-Thon Tracker!
  \n You can use this tracker to find out whether you have reached your Walk-A-Thon goals. You might also use this before the walk to see if your lap goals will raise enough money.
  \n *====================================================================*
  \n Let's get started! 
  \n *====================================================================*"
  
  
# Requirement 1.1 -- Earning goal for the Walk-A-Thon.

print "\n First, what was your team's fundraising goal ($)?"
goal_input = Float (gets.chomp)

puts "Amazing! Let's see if you and your team were able to reach your goal of $#{'%.2f' %goal_input}."


# Requirement 1.2 -- Amount earned per lap per person.

print "\n How much money ($) did each walker earn per lap?"
lapern = Float (gets.chomp)


# Requirement 1.3 -- Number of laps completed for 5 people.

print "\n How many total laps did your team walk today?"
totlaps = Float (gets.chomp)
puts "Whew, I sure hope everyone stretched this morning!"

puts "\n How many laps did each walker complete?"

print "Walker 1:"
wlkrlap1 = Float (gets.chomp)
wlkrern1 = wlkrlap1 * lapern
puts "Walker 1 earned $#{'%.2f' %wlkrern1}!"

print "\n Walker 2:"
wlkrlap2 = Float (gets.chomp)
wlkrern2 = wlkrlap2 * lapern
puts "Walker 2 earned $#{'%.2f' %wlkrern2}!"

print "\n Walker 3:"
wlkrlap3 = Float (gets.chomp)
wlkrern3 = wlkrlap3 * lapern
puts "Walker 3 earned $#{'%.2f' %wlkrern3}!"

print "\n Walker 4:"
wlkrlap4 = Float (gets.chomp)
wlkrern4 = wlkrlap4 * lapern
puts "Walker 4 earned $#{'%.2f' %wlkrern4}!"

print "\n Walker 5:"
wlkrlap5 = Float (gets.chomp)
wlkrern5 = wlkrlap5 * lapern
puts "Walker 5 earned $#{'%.2f' %wlkrern5}!"


print "\n *====================================================================*
  \n Drum roll, please...And now...the totals!
  \n *====================================================================*"


#Requirement 2.2 -- Calculates the total amount earned in the walk-a-thon

totern = totlaps * lapern
puts "\n Your team has earned $#{'%.2f' %totern} at this year's Walk-A-Thon."


# Requirement 2.3 -- Tells whether the goal was met.

if totern >= goal_input
  puts "\n *~Congratulations! You met your fundraising goal.~*"
else
  puts "\n You did not meet your fundraising goal this year."
end


# Requirement 2.1 -- Determines the highest earning walker.

if wlkrern1 > [wlkrern2, wlkrern3, wlkrern4, wlkrern5].max
	print "\n It looks like Walker 1 earned the most for your team!"
elsif wlkrern2 >[wlkrern1, wlkrern3, wlkrern4, wlkrern5].max
	print "\n It looks like Walker 2 earned the most for your team!"
elsif wlkrern3 > [wlkrern1, wlkrern2, wlkrern4, wlkrern5].max
	print "\n It looks like Walker 3 earned the most for your team!"
elsif wlkrern4 > [wlkrern1, wlkrern2, wlkrern3, wlkrern5].max
	print "\n It looks like Walker 4 earned the most for your team!"
elsif wlkrern5 > [wlkrern1, wlkrern2, wlkrern3, wlkrern4].max
	print "\n It looks like Walker 5 earned the most for your team!"
else
	print "\n It looks like your highest earning walkers have tied! Your highest earning walkers earned $#{'%.2f' %[wlkrern1, wlkrern2, wlkrern3, wlkrern4, wlkrern5].max} each for the team."
end