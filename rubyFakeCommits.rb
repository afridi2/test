=begin

1. Open the file and add a line to it
2. Add it to a commit
3. Add a time to the commit (Basically in the past)
4. Repeat this process and add about 1,000+ commits

=end

file_name = "editFile.txt"
commits = 20 # number of commits
days = 3 # number of days to spread the commits over

# You do not need to edit anything below this line if you would like
# to reproduce the results

time = Time.new
#puts time

commits_per_day = commits / days
extra_commits = commits % days

commit_count = 0
day_count = 0

open(file_name, 'w') do |f|
  while commit_count < commits
  	#output_time = time.strftime("%a %b %d")
  	output_time = time
  	puts output_time
  	f.puts "Adding Commit Number: #{commit_count}"
  	system ('git add .')
  	system ('git commit --date="Wed Feb 16 14:00 2015 +0100" -m "Added Commit #{commit_count}" ')
  	commit_count += 1
  end
end