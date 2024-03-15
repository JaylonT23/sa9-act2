RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = "hello"
        wrapper = StringWrapper.new(string)
        expect(wrapper.reverse).to eq("olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = "hello"
        wrapper = StringWrapper.new(string)
        expect(wrapper.upcase).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = "HELLO"
        wrapper = StringWrapper.new(string)
        expect(wrapper.downcase).to eq("hello")
      end
    end
  end