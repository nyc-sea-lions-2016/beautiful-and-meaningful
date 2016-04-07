# beautiful-and-meaningful

Models: 
-	Images:
  o	Belongs_to :category
  o	Validates :content, presence: true

-	Quotes:
  o	Belongs_to :category
  o	Validates :content, presence: true

-	Categories:
  o	Has_many :images
  o	Has_many :quotes
  o	Validates :name, presence: true

To-Dos:
-	LEARN RAILS
-	Integrating and utilizing APIs
  o	Images: Getty Images/Flickr/500px
  o	Quotes: Twitter/Famous Quotes API
-	What categories do we want for images and quotes???

