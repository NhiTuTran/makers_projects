require_relative "account"

class AccountsRepository
  def all
    accounts = []

    sql = 'SELECT id, email_address, username FROM accounts;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |account_db|
      account = Account.new
      account.id = account_db['id']
      account.email_address = account_db['email_address']
      account.username = account_db['username']

      accounts << account
    end

    return accounts
  end

  def find(id)
    sql = 'SELECT id, email_address, username FROM accounts WHERE id = $1;'
    sql_params = [id]

    result_set = DatabaseConnection.exec_params(sql, sql_params)
    account_db = result_set[0]

    account = Account.new
    account.id = account_db['id']
    account.email_address = account_db['email_address']
    account.username = account_db['username']

    return account
  end

  def create(account)
    sql = 'INSERT INTO accounts (email_address, username) VALUES ($1, $2);'
    sql_params = [account.email_address, account.username]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end

  def delete(username)
    sql = 'DELETE FROM accounts WHERE username = $1;'
    sql_params = [username]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end
end