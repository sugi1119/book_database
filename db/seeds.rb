Author.destroy_all
Book.destroy_all

Author.create(:name => 'Lewis Carroll', :nationality => 'English', :dob => '1832/01/27',  :image =>'http://upload.wikimedia.org/wikipedia/commons/f/fb/LewisCarrollSelfPhoto.jpg')
Work.create(:title => 'Aice in wonderland' :year =>'1865', :page => '200', :genre => 'Fiction', :isbn => '9781552465707', :image => 'http://upload.wikimedia.org/wikipedia/commons/a/af/AlicesAdventuresInWonderlandTitlePage.jpg', :author_id =>'1')
