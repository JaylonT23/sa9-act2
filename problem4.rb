 RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

  describe "#withdraw" do
    context "with sufficient funds" do
      it "decreases the balance by the withdrawal amount" do
        account = BankAccount.new
        account.deposit(100)
        account.withdraw(50)
        expect(account.balance).to eq(50)
      end
    end

    context "with insufficient funds" do
      it "does not change the balance" do
        account = BankAccount.new
        account.deposit(100)
        account.withdraw(150)
        expect(account.balance).to eq(100)
      end
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end
end
