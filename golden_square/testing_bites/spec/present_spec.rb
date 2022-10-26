require 'present'
RSpec.describe Present do
    context "contents already wrapped" do
        it "fails" do
            present = Present.new
            present.wrap("toy")
            expect{present.wrap("toy")}.to raise_error "A content has already been wrapped."
        end
    end 
    context "no contents wrapped" do
        it "fails" do
            present = Present.new
            expect{present.unwrap}.to raise_error "No contents have been wrapped."
        end
    end
end