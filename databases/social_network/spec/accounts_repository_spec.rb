require "accounts_repository"

RSpec.describe AccountsRepository do
  def reset_accounts_table
    seed_sql = File.read('spec/seeds_social_network.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_accounts_table
  end

  it "returns all accounts" do
    repo = AccountsRepository.new
    accounts = repo.all

    expect(accounts.length).to eq 2
    expect(accounts.first.id).to eq '1'
    expect(accounts.first.email_address).to eq 'joebloggs@makers.com'
    expect(accounts.first.username).to eq 'JB72'
  end

  it "returns the single account J123" do
    repo = AccountsRepository.new
    account_2 = repo.find(2)

    expect(account_2.email_address).to eq 'jeff@makers.com'
    expect(account_2.username).to eq 'J123'
  end

  it "creates a new account" do
    repo = AccountsRepository.new

    new_account = Account.new
    new_account.email_address = 'jane@makers.com'
    new_account.username = 'JN45'

    repo.create(new_account)

    all_accounts = repo.all

    expect(all_accounts).to include(
      have_attributes(
        email_address: new_account.email_address,
        username: new_account.username
      )
    )
  end

  it "deletes an account by username" do
    repo = AccountsRepository.new
    repo.delete('JB72')
    accounts = repo.all

    expect(accounts.length).to eq 1
    expect(accounts.first.username).to eq 'J123'
  end
end