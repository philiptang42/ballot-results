vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Jim Bob',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

# How many people voted in precinct 1?
precint_one_total_voters = 0
vote_results[0].each do |votes|
  precint_one_total_voters += votes
end

puts "Precint 1 had #{precint_one_total_voters} votes."
puts ""
# Who was the winning candidate in Precinct 4?
precinct_4_winner = vote_results[3].index(vote_results[3].max)

puts "#{candidates[precinct_4_winner]} won Precinct 4."
puts ""
# How many people voted for Jim Bob?
people_for_jim = 0
people_for_billy = 0
people_for_sally = 0
vote_results.size.times do |precinct_index|
  people_for_jim += vote_results[precinct_index][0]
  people_for_billy += vote_results[precinct_index][1]
  people_for_sally += vote_results[precinct_index][2]
end

puts "Jim Bob had #{people_for_jim} votes."
puts "Billy Joe had #{people_for_billy} votes."
puts "Sally Jane had #{people_for_sally} votes."

# How many people voted for Billy Joe?

# How many people voted for Sally Jane?

# How many people voted in total?

# Who had the most votes?
