require_relative '../lib/2_classes'
load "#{__dir__}/solution.x.rb" if File.file?("#{__dir__}/solution.x.rb")

RSpec.describe 'classes' do
  describe 'Animal' do
    describe '.new' do
      it 'returns an instance of Animal' do
        animal = Animal.new
        expect(animal).to be_a Animal
      end
    end
  end

  describe 'Vehicle' do
    describe '.new' do
      it 'returns an instance of Vehicle' do
        vehicle = Vehicle.new
        expect(vehicle).to be_a Vehicle
      end
    end
  end

  describe 'Cat' do
    describe '#speak' do
      it 'returns miaow' do
        cat = Cat.new
        expect(cat.speak).to eq 'miaow'
      end
    end
  end

  describe 'Dog' do
    describe '#speak' do
      it 'returns woof' do
        dog = Dog.new
        expect(dog.speak).to eq 'woof'
      end
    end
  end

  describe 'StringFormatter' do

    describe 'block_caps' do
      it 'given "hello", returns "HELLO"' do
        string_fornatter = StringFormatter.new
        expect(string_fornatter.block_caps('hello')).to eq 'HELLO'
      end

      it 'given "goodbye", returns "GOODBYE"' do
        string_fornatter = StringFormatter.new
        expect(string_fornatter.block_caps('goodbye')).to eq 'GOODBYE'
      end
    end

    describe 'lower_case' do
      it 'given "HELLO", returns "hello"' do
        string_fornatter = StringFormatter.new
        expect(string_fornatter.lower_case('HELLO')).to eq 'hello'
      end

      it 'given "GOODBYE", returns "goodbye"' do
        string_fornatter = StringFormatter.new
        expect(string_fornatter.lower_case('GOODBYE')).to eq 'goodbye'
      end
    end
  end

  describe 'Calculator' do

    describe 'add' do
      it 'given 5 and 5, returns 10' do
        calculator = Calculator.new
        expect(calculator.add(5,5)).to eq 10
      end

      it 'given 1 and 1, returns 2' do
        calculator = Calculator.new
        expect(calculator.add(1,1)).to eq 2
      end
    end

    describe 'multiply' do
      it 'given 5 and 5, returns 25' do
        calculator = Calculator.new
        expect(calculator.multiply(5,5)).to eq 25
      end

      it 'given 2 and 2, returns 4' do
        calculator = Calculator.new
        expect(calculator.multiply(2,2)).to eq 4
      end
    end

    describe 'subtract' do
      it 'given 5 and 4, returns 1' do
        calculator = Calculator.new
        expect(calculator.subtract(5,4)).to eq 1
      end

      it 'given 5 and 5, returns 0' do
        calculator = Calculator.new
        expect(calculator.subtract(5,5)).to eq 0
      end

      it 'given 4 and 5, returns -1' do
        calculator = Calculator.new
        expect(calculator.subtract(4,5)).to eq -1
      end
    end

    describe 'divide' do
      it 'given 10 and 5, returns 2' do
        calculator = Calculator.new
        expect(calculator.divide(10,5)).to eq 2
      end

      it 'given 10 and 2, returns 5' do
        calculator = Calculator.new
        expect(calculator.divide(10,2)).to eq 5
      end
    end

  end

  describe 'Apprentice' do

    describe 'name' do
      it 'when name is "Jude", returns "Jude"' do
        apprentice = Apprentice.new('Jude', 'August 2045')
        expect(apprentice.name).to eq 'Jude'
      end
    end

    describe 'cohort' do
      it 'when cohort is "August 2045", returns "August 2045"' do
        apprentice = Apprentice.new('Jude', 'August 2045')
        expect(apprentice.cohort).to eq 'August 2045'
      end
    end

    describe 'full_details' do
      it 'returns name and cohort' do
        apprentice = Apprentice.new('Jude', 'August 2045')
        expect(apprentice.full_details).to eq 'Jude, August 2045'
      end
    end

  end

  describe 'Cohort' do

    describe 'name' do
      it 'when name is "January 2060", returns "January 206"' do
        cohort = Cohort.new('January 2060', '2060/01/01', '2060/01/08')
        expect(cohort.name).to eq 'January 2060'
      end
    end

    describe 'start_date' do
      it 'when start_date is "2060/01/01" returns Date object for that date' do
        cohort = Cohort.new('January 2060', '2060/01/01', '2060/01/08')
        expect(cohort.start_date).to eq Date.parse('2060/01/01')
      end
    end

    describe 'end_date' do
      it 'when end_date is "2060/01/08" returns Date object for that date' do
        cohort = Cohort.new('January 2060', '2060/01/01', '2060/01/08')
        expect(cohort.end_date).to eq Date.parse('2060/01/08')
      end
    end

    describe 'duration' do
      it 'returns the diff between start_date and end_date in days' do
        cohort = Cohort.new('January 2060', '2060/01/01', '2060/01/08')
        expect(cohort.duration).to eq 7
      end
    end
  end
end
