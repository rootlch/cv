class NotesController < ApplicationController
  before_filter :setup

  def index
    @personal_details = personal_details

    @interest_and_achievements = interest_and_achievements

    @skills = skills

    @objectives = objectives
    @work_experience = work_experience
    @education_and_qualification = education_and_qualifications
  end

  def skills
    {
      "Programming Languages" => "C++, Java, Dart, Go, Html, Css, Ruby, Sass, Javascript",
      "Testing" => "minitest/spec, RSpec",
      "Frameworks" => "Rails",
      "Frontend Frameworkds" => "Bootstrap (in normal form and sass), JQuery ( a little )",
      "Libraries" => "capybara, devise, simple_form",
      "Data Formats" => "Json, Xml, Yaml, NoSQL, via_rails: [SQLite3, PostgreSQL]",
      "Tools" => "Git, Vim, Terminal",
      "System" => "Mac",
      "Hosts" => "Heroku, AppEngine",
      "Spoken Languages" => "English, Chinese, Malay"
    }
  end

  def personal_details
    {
      "Name" => "Lim Chia Hau",
      "Address" => "712 Jalan Lavender Heights 22, Taman Lavender Heights, 70450 Seremban, Negeri Sembilan. Malaysia.",
      "Phone" => "+6014-213 8964",
      "Email/iMessage" => "chia_hau@hotmail.com",
      "Age" => age(1988),
      "Timezone" => "UTC+08.00 (2 hours difference compared to Caberra and Melbourne)",
      "Github" => "https://github.com/rootlch?tab=repositories"
    }
  end

  def interest_and_achievements
    [ "Backend development", "Ruby", "Rails", "Basketball", "Frisbee", "Hawken" ]
  end

  def objectives
    [
      "To create better web apps using ruby on rails",
      "To gain experience working on bigger apps with a bigger team",
      "To puts smiles on more people's faces."
    ]
  end

  def education_and_qualifications
    [
      "Read and understand most parts of eloquent ruby book",
      "Working through the tutorial found on railstutorial.org",
      "Completed the beginner portion of rubymonk.com",
      "2-2 LLB University of Leeds",
      "IELTS 7.0"
    ]
  end

  def work_experience
    [
      "Developed this web app with ruby on rails using the vim text editor and hosted on Heroku. Used RSpec to develop in a test driven manner. Used capybara to simulate user interaction with the page in order to test this app. Used sass and bootstrap to style the elements. Created custom view helpers to display the tables and list in order to avoid repeating myself. Placed the source under version control via git which enable easier modification and possibly communication with other developers.",
      "Developed my company website using dart and go, which is hosted on googlle AppEngine. Focusing on perfomance and reducing cost via use of static files. But combined dart and css to create a custom carousel just for fun.",
      "Developed an e-commerce site using dart and go, where the client is independent from the server. Used go on the server side to create a REST like interface to pull data from the NoSql datastore. Used JSON to transfer data between the client and server to improve interactivity. Connected the e-commerce site to Paypal’s JSON based API. Created a custom shopping cart that records a users orders using cookies so that users are able to continue with their shopping if they left for some reason. Created an admin interface to add, edit, delete products. Add ability to mark orders as paid, is paid via Paypal?, is delivered?. Add ability to delete orders, change the main banner so that it is easier for admins to modify the site. Utilised DataURLs to store and display images to avoid creating a separate image server.",
      "Worked as an admin clerk that interact with customer as well as prepare tenancy agreements since July 2013."
    ]
  end


  def age(year_of_birth)
    Time.now.year - year_of_birth
  end

  def setup
    #chia_hau@hotmail.com not working properly
    @email = "chiahau300@gmail.com"
  end
end
