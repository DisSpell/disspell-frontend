class AddTsvectorToVideos < ActiveRecord::Migration[7.1]
  def up
    add_column :videos, :tsvector_content_tsearch, :tsvector
    execute <<-SQL
      CREATE INDEX videos_tsvector_content_tsearch_idx
      ON videos
      USING gin(tsvector_content_tsearch);
    SQL

    execute <<-SQL
      CREATE TRIGGER tsvectorupdate BEFORE INSERT OR UPDATE
      ON videos FOR EACH ROW EXECUTE PROCEDURE
      tsvector_update_trigger(
        tsvector_content_tsearch, 'pg_catalog.english', title
      );
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER tsvectorupdate
      ON videos
    SQL

    remove_index :videos, :tsvector_content_tsearch_idx
    remove_column :videos, :tsvector_content_tsearch
  end
end
