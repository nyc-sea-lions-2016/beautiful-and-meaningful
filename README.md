# beautiful-and-meaningful

Models: 
-	Images:
  Belongs_to :category
  Validates :content, presence: true

-	Quotes:
  Belongs_to :category
  Validates :content, presence: true

-	Categories:
  Has_many :images
  Has_many :quotes
  Validates :name, presence: true

To-Dos:
-	LEARN RAILS
-	Integrating and utilizing APIs
  Images: Getty Images/Flickr/500px
  Quotes: Twitter/Famous Quotes API
-	What categories do we want for images and quotes???
-	

http://www.theodinproject.com/ruby-on-rails/working-with-external-apis
http://developers.gettyimages.com/api/docs/v3/quickstart.html
