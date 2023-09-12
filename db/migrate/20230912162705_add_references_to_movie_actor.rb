class AddReferencesToMovieActor < ActiveRecord::Migration[7.0]
  def change
    add_reference :movie_actors, :actor, null: false, foreign_key: true
    add_reference :movie_actors, :movie, null: false, foreign_key: true
  end
end
