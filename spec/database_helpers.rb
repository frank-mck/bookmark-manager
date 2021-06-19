require './lib/database_connection'

def persisted_data(table:, id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  DatabaseConnection.query("SELECT * FROM #{table} WHERE id = '#{id}';")
end