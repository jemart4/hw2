# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Actor.destroy_all
Character.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
new_studio = Studio.new
new_studio["name"]= "Warner Bros."
new_studio.save

#movies-----------------------------------------------------
studio = Studio.find_by({"name" => "Warner Bros."})

new_movie = Movie.new
new_movie["title"]= "Batman Begins"
new_movie["year"]= 2005
new_movie["rating"]= "PG-13"
new_movie["studio_id"]= studio["id"]
new_movie.save

new_movie2 = Movie.new
new_movie2["title"]= "The Dark Knight"
new_movie2["year"]= 2008
new_movie2["rating"]= "PG-13"
new_movie2["studio_id"]= studio["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"]= "The Dark Knight Rises"
new_movie3["year"]= 2012
new_movie3["rating"]= "PG-13"
new_movie3["studio_id"]= studio["id"]
new_movie3.save


# actors ----------------------------------------------------
new_actor = Actor.new
new_actor["name"]= "Christian Bale"
new_actor.save

new_actor2 = Actor.new
new_actor2["name"]= "Michael Caine"
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"]= "Liam Neeson"
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"]= "Katie Holmes"
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"]= "Gary Oldman"
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"]= "Heath Ledger"
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"]= "Aaron Eckhart"
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"]= "Maggie Gyllenhaal"
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"]= "Tom Hardy"
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"]= "Joseph Gordon-Levitt"
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"]= "Anne Hathaway"
new_actor11.save



#characters-------

movie = Movie.find_by({"title" => "Batman Begins"})
actor = Actor.find_by({"name" => "Christian Bale"})
new_char = Character.new
new_char["char_name"]= "Bruce Wayne"
new_char["movie_id"] = movie["id"]
new_char["actor_id"] = actor["id"]
new_char.save

# movie = Movie.find_by({"title" => "Batman Begins"})
actor = Actor.find_by({"name" => "Michael Caine"})
new_char2 = Character.new
new_char2["char_name"]= "Alfred"
new_char2["movie_id"] = movie["id"]
new_char2["actor_id"] = actor["id"]
new_char2.save

# movie = Movie.find_by({"title" => "Batman Begins"})
actor = Actor.find_by({"name" => "Liam Neeson"})
new_char3 = Character.new
new_char3["char_name"]= "Ra's Al Ghul"
new_char3["movie_id"] = movie["id"]
new_char3["actor_id"] = actor["id"]
new_char3.save

# movie = Movie.find_by({"title" => "Batman Begins"})
actor = Actor.find_by({"name" => "Katie Holmes"})
new_char4 = Character.new
new_char4["char_name"]= "Rachel Dawes"
new_char4["movie_id"] = movie["id"]
new_char4["actor_id"] = actor["id"]
new_char4.save

# movie = Movie.find_by({"title" => "Batman Begins"})
actor = Actor.find_by({"name" => "Gary Oldman"})
new_char5 = Character.new
new_char5["char_name"]= "Comissioner Gordon"
new_char5["movie_id"] = movie["id"]
new_char5["actor_id"] = actor["id"]
new_char5.save

movie2 = Movie.find_by({"title" => "The Dark Knight"})
actor = Actor.find_by({"name" => "Christian Bale"})
new_char6 = Character.new
new_char6["char_name"]= "Bruce Wayne"
new_char6["movie_id"] = movie2["id"]
new_char6["actor_id"] = actor["id"]
new_char6.save

# movie2 = Movie.find_by({"title" => "The Dark Knight"})
actor = Actor.find_by({"name" => "Heath Ledger"})
new_char7 = Character.new
new_char7["char_name"]= "Joker"
new_char7["movie_id"] = movie2["id"]
new_char7["actor_id"] = actor["id"]
new_char7.save

actor = Actor.find_by({"name" => "Aaron Eckhart"})
new_char8 = Character.new
new_char8["char_name"]= "Harvey Dent"
new_char8["movie_id"] = movie2["id"]
new_char8["actor_id"] = actor["id"]
new_char8.save

actor = Actor.find_by({"name" => "Michael Caine"})
new_char9 = Character.new
new_char9["char_name"]= "Alfred"
new_char9["movie_id"] = movie2["id"]
new_char9["actor_id"] = actor["id"]
new_char9.save

actor = Actor.find_by({"name" => "Maggie Gyllenhaal"})
new_char10 = Character.new
new_char10["char_name"]= "Rachel Dawes"
new_char10["movie_id"] = movie2["id"]
new_char10["actor_id"] = actor["id"]
new_char10.save

movie3 = Movie.find_by({"title" => "The Dark Knight Rises"})
actor = Actor.find_by({"name" => "Christian Bale"})
new_char11 = Character.new
new_char11["char_name"]= "Bruce Wayne"
new_char11["movie_id"] = movie3["id"]
new_char11["actor_id"] = actor["id"]
new_char11.save

actor = Actor.find_by({"name" => "Gary Oldman"})
new_char12 = Character.new
new_char12["char_name"]= "Comissioner Gordon"
new_char12["movie_id"] = movie3["id"]
new_char12["actor_id"] = actor["id"]
new_char12.save

actor = Actor.find_by({"name" => "Tom Hardy"})
new_char13 = Character.new
new_char13["char_name"]= "Bane"
new_char13["movie_id"] = movie3["id"]
new_char13["actor_id"] = actor["id"]
new_char13.save

actor = Actor.find_by({"name" => "Joseph Gordon-Levitt"})
new_char14 = Character.new
new_char14["char_name"]= "John Blake"
new_char14["movie_id"] = movie3["id"]
new_char14["actor_id"] = actor["id"]
new_char14.save

actor = Actor.find_by({"name" => "Anne Hathaway"})
new_char15 = Character.new
new_char15["char_name"]= "Selina Kyle"
new_char15["movie_id"] = movie3["id"]
new_char15["actor_id"] = actor["id"]
new_char15.save



# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

list = Movie.all
for movies in list
    movie_name = movies["title"]
    movie_year = movies["year"]
    movie_rating = movies["rating"]
    studio = Studio.find_by({"id" => movies["studio_id"]})
    studio_name = studio["name"]
    puts "#{movie_name} #{movie_year} #{movie_rating} #{studio_name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

actors_bat1 = Character.all

for list2 in actors_bat1
    movie = Movie.find_by({ "id" => list2["movie_id"] })
    movie_name = movie["title"]
    actor = Actor.find_by({"id" => list2["actor_id"]})
    actor_name = actor["name"]
    character = list2["char_name"]
    puts "#{movie_name} #{actor_name} #{character}"
end



