class Movie < ActiveRecord::Base
    def self.released_after(year)
      where("release_date > ?", year)
    end
    def update_title(new_title)
        self.title = new_title
        save
      end
      def self.delete_all_movies
        delete_all
      end
  end
  