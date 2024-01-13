class AddTsvectorToTranscripts < ActiveRecord::Migration[7.1]
  def up
    add_column :transcripts, :tsvector_content_tsearch, :tsvector
    execute <<-SQL
      CREATE INDEX transcripts_tsvector_content_tsearch_idx
      ON transcripts
      USING gin(tsvector_content_tsearch);
    SQL

    execute <<-SQL
      UPDATE transcripts
      SET tsvector_content_tsearch = (
        to_tsvector('english', coalesce(transcript, ''))
      )
    SQL

    execute <<-SQL
      CREATE TRIGGER tsvectorupdate BEFORE INSERT OR UPDATE
      ON transcripts FOR EACH ROW EXECUTE PROCEDURE
      tsvector_update_trigger(
        tsvector_content_tsearch, 'pg_catalog.english', transcript
      );
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER tsvectorupdate
      ON transcripts
    SQL
    remove_index :transcripts, :tsvector_content_tsearch_idx
    remove_column :transcripts, :tsvector_content_tsearch
  end
end
