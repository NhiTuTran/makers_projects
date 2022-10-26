require "password_checker"

RSpec.describe PasswordChecker do
  context "when password is less than 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect{password.check("Hello")}.to raise_error "Invalid password, must be 8+ characters."
    end

    it "when password is more than 8 characters" do
      password = PasswordChecker.new
      result = password.check("Hello World")
      expect(result).to eq true
    end
  end
end