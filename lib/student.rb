require 'pry'
class Student


  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each {|k,v| self.send(("#{k}="),v)}
    #k = name 
    #v = location
    @@all << self #save the new students, is like save methode 
  end

  def self.create_from_collection(students_array)
students_array.each{|student| Student.new(student)}
#     [{:name=>"Alex Patriquin", :location=>"New York, NY"},
# {:name=>"Bacon McRib", :location=>"Kansas City, MO"},
# {:name=>"Alisha McWilliams", :location=>"San Francisco, CA"},
# {:name=>"Daniel Fenjves", :location=>"Austin, TX"},
# {:name=>"Arielle Sullivan", :location=>"Chicago, IL"},
# {:name=>"Sushanth Bhaskarab", :location=>"Portland, OR"},
# {:name=>"Sushanth Bhaskarab", :location=>"Portland, OR"}]
  end

def add_student_attributes(attributes_hash)
    attributes_hash.each{|k,v| self.send(("#{k}="),v)}

#     {:twitter=>"someone@twitter.com",
# :linkedin=>"someone@linkedin.com",
# :github=>"someone@github.com",
# :blog=>"someone@blog.com",
# :profile_quote=>
#   "\"Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.\" - Rumi",
# :bio=>
#   "I was in southern California for college (sun and In-n-Out!), rural Oregon for high school (lived in a town with 1500 people and 3000+ cows), and Tokyo for elementary/middle school."}
  end

  def self.all
    @@all
  end
end

