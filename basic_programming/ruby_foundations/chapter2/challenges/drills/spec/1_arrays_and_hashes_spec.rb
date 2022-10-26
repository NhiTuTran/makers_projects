require_relative '../lib/1_arrays_and_hashes'
load "#{__dir__}/solution.x.rb" if File.file?("#{__dir__}/solution.x.rb")

RSpec.describe 'arrays and hashes' do
  describe 'first_element' do
    it 'given [1,2,3], returns 1' do
      expect(first_element([1,2,3])).to eq 1
    end

    it 'given [11,12,13], returns 11' do
      expect(first_element([11,12,13])).to eq 11
    end

    it 'given [24,1,98], returns 24' do
      expect(first_element([24,1,98])).to eq 24
    end
  end

  describe 'second_element' do
    it 'given [1,2,3], returns 2' do
      expect(second_element([1,2,3])).to eq 2
    end

    it 'given [11,12,13], returns 12' do
      expect(second_element([11,12,13])).to eq 12
    end

    it 'given [24,1,98], returns 1' do
      expect(second_element([24,1,98])).to eq 1
    end
  end

  describe 'last_element' do
    it 'given [1,2,3], returns 3' do
      expect(last_element([1,2,3])).to eq 3
    end

    it 'given [11,12,13], returns 13' do
      expect(last_element([11,12,13])).to eq 13
    end

    it 'given [24,1,98], returns 98' do
      expect(last_element([24,1,98])).to eq 98
    end
  end

  describe 'first_two_elements' do
    it 'given [1,2,3], returns [1,2]' do
      expect(first_two_elements([1,2,3])).to eq [1,2]
    end

    it 'given [11,12,13,14], returns [11,12]' do
      expect(first_two_elements([11,12,13,14])).to eq [11,12]
    end

    it 'given [100,1,67,100,98], returns [100,1]' do
      expect(first_two_elements([100,1,67,100,98])).to eq [100,1]
    end
  end

  describe 'first_three_elements' do
    it 'given [1,2,3], returns [1,2,3]' do
      expect(first_three_elements([1,2,3])).to eq [1,2,3]
    end

    it 'given [11,12,13,14], returns [11,12,13]' do
      expect(first_three_elements([11,12,13,14])).to eq [11,12,13]
    end

    it 'given [100,1,67,100,98], returns [100,1,67]' do
      expect(first_three_elements([100,1,67,100,98])).to eq [100,1,67]
    end
  end

  describe 'total' do
    it 'given [1,2,3,4], returns 10' do
      expect(total([1,2,3,4])).to eq 10
    end

    it 'given [100,1,24,500], returns 625' do
      expect(total([100,1,24,500])).to eq 625
    end

    it 'given [1,2,3,4,5,6,7,8,9,10], returns 55' do
      expect(total([1,2,3,4,5,6,7,8,9,10])).to eq 55
    end
  end

  describe 'lowest_number' do
    it 'given [2,5,3,1,4], returns 1' do
      expect(lowest_number([2,5,3,1,4])).to eq 1
    end

    it 'given [2,5,3,4], returns 2' do
      expect(lowest_number([2,5,3,4])).to eq 2
    end

    it 'given [5,3,4], returns 3' do
      expect(lowest_number([5,3,4])).to eq 3
    end
  end

  describe 'highest_number' do
    it 'given [2,5,3,1,4], returns 5' do
      expect(highest_number([2,5,3,1,4])).to eq 5
    end

    it 'given [2,5,31,4], returns 31' do
      expect(highest_number([2,5,31,4])).to eq 31
    end

    it 'given [500,31,4,2,1], returns 500' do
      expect(highest_number([500,31,4,2,1])).to eq 500
    end
  end

  describe 'the_beatles' do
    it 'takes no args and returns the names of the Beatles' do
      expect(the_beatles).to eq ['john', 'paul', 'george', 'ringo']
    end
  end

  describe 'i_joined_the_beatles' do
    it "given 'jo' returns ['john', 'paul', 'george', 'ringo', 'jo']" do
      expect(i_joined_the_beatles('jo')).to eq ['john', 'paul', 'george', 'ringo', 'jo']
    end

    it "given 'freda' returns ['john', 'paul', 'george', 'ringo', 'freda']" do
      expect(i_joined_the_beatles('freda')).to eq ['john', 'paul', 'george', 'ringo', 'freda']
    end

    it "given 'bob' returns ['john', 'paul', 'george', 'ringo', 'bob']" do
      expect(i_joined_the_beatles('bob')).to eq ['john', 'paul', 'george', 'ringo', 'bob']
    end
  end

  describe 'we_joined_the_beatles' do
    it "given ['jo', 'jude', 'sam'], returns ['john', 'paul', 'george', 'ringo', 'jo', 'jude', 'sam']" do
      expect(we_joined_the_beatles(['jo', 'jude', 'sam'])).to eq ['john', 'paul', 'george', 'ringo', 'jo', 'jude', 'sam']
    end
    it "given ['bob', 'tracy', 'don'], returns ['john', 'paul', 'george', 'ringo', 'bob', 'tracy', 'don']" do
      expect(we_joined_the_beatles(['bob', 'tracy', 'don'])).to eq ['john', 'paul', 'george', 'ringo', 'bob', 'tracy', 'don']
    end
  end

  describe 'remove_nils_from_array' do
    it 'given [nil, 1, 2, 3], returns [1,2,3]' do
      expect(remove_nils_from_array([nil, 1, 2, 3])).to eq [1, 2, 3]
    end

    it 'given [nil, nil, nil,  nil], returns []' do
      expect(remove_nils_from_array([nil, nil, nil, nil])).to eq []
    end
  end

  describe 'double_array' do
    it 'given [1,2,3], returns [1,2,3,1,2,3]' do
      expect(double_array([1,2,3])).to eq [1,2,3,1,2,3]
    end

    it 'given [1,2,3,4], returns [1,2,3,4,1,2,3,4]' do
      expect(double_array([1,2,3,4])).to eq [1,2,3,4,1,2,3,4]
    end
  end

  describe 'unique_elements' do
    it 'given [1,1,2,2,3,3], returns [1,2,3]' do
      expect(unique_elements([1,1,2,2,3,3])).to eq [1,2,3]
    end

    it 'given [1,2,3,4,5,6,7,8,9,10], returns [1,2,3,4,5,6,7,8,9,10]' do
      expect(unique_elements([1,2,3,4,5,6,7,8,9,10])).to eq [1,2,3,4,5,6,7,8,9,10]
    end

    it 'given [1,1], returns [1]' do
      expect(unique_elements([1,1])).to eq [1]
    end
  end

  describe 'add_to_array' do
    it "given ['one', 'two', 'three'] and 'four', returns ['one', 'two', 'three', 'four']" do
      expect(add_to_array(['one', 'two', 'three'], 'four')).to eq ['one', 'two', 'three', 'four']
    end

    it "given ['one', 'two', 'three', 'five'] and 'four', returns ['one', 'two', 'three', 'five', 'four']" do
      expect(add_to_array(['one', 'two', 'three', 'five'], 'four')).to eq ['one', 'two', 'three', 'five', 'four']
    end
  end

  describe 'get_band_member' do
    it "given 'vocalist', returns 'miss piggy'" do
      expect(get_band_member('vocalist')).to eq 'miss piggy'
    end

    it "given 'lead_guitar', returns 'scooter'" do
      expect(get_band_member('lead_guitar')).to eq 'scooter'
    end
  end

  describe 'query_product' do
    it "given 'price', returns 2.99" do
      expect(query_product('price')).to eq 2.99
    end

    it "given 'name', returns 'Chocolate'" do
      expect(query_product('name')).to eq 'chocolate'
    end

    it "given 'ingredients', returns ['cocoa', 'nuts', 'mylk']" do
      expect(query_product('ingredients')).to eq ['cocoa', 'nuts', 'mylk']
    end
  end

  describe 'new_drummer' do
    it "given 'kermit', returns {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'kermit'}" do
      expect(new_drummer('kermit')).to eq({'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'kermit'})
    end

    it "given 'cookie monster', returns {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'cookie monster'}" do
      expect(new_drummer('cookie monster')).to eq({'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'cookie monster'})
    end
  end

  describe 'new_vocalist' do
    it "given 'kermit', returns {'vocalist' => 'kermit', 'lead_guitar' => 'scooter'}" do
      expect(new_vocalist('kermit')).to eq({'vocalist' => 'kermit', 'lead_guitar' => 'scooter'})
    end

    it "given 'cookie monster', returns {'vocalist' => 'cookie monster', 'lead_guitar' => 'scooter'}" do
      expect(new_vocalist('cookie monster')).to eq({'vocalist' => 'cookie monster', 'lead_guitar' => 'scooter'})
    end
  end

  describe 'touch_in' do
    it "given 'Aldgate East' and '2022/01/30 11:12', returns {'entrypoint' => 'Aldgate East', 'time' => '2022/01/30 11:12'}" do
      expect(touch_in('Aldgate East', '2022/01/30 11:12')).to eq({'entrypoint' => 'Aldgate East', 'time' => '2022/01/30 11:12'})
    end

    it "given 'Victoria' and '2022/08/04 09:00', returns {'entrypoint' => 'Victoria', 'time' => '2022/08/04 09:00'}" do
      expect(touch_in('Victoria', '2022/08/04 09:00')).to eq({'entrypoint' => 'Victoria', 'time' => '2022/08/04 09:00'})
    end
  end

  describe 'all_values' do
    it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns [1,2,3]" do
      expect(all_values({'one' => 1, 'two' => 2, 'three' => 3})).to eq [1,2,3]
    end

    it "given {'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4}, returns [1,2,3,4]" do
      expect(all_values({'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4})).to eq [1,2,3,4]
    end
  end

  describe 'all_keys' do
    it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns ['one', 'two', 'three'] " do
      expect(all_keys({'one' => 1, 'two' => 2, 'three' => 3})).to eq ['one', 'two', 'three']
    end

    it "given {'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4}, returns ['one', 'two', 'three', 'four']" do
    end
  end

  describe 'remove_nils_from_hash' do
    it "given {'one' => nil, 'two' => 2, 'three' => 3}, returns {'two' => 2, 'three' => 3}" do
      expect(remove_nils_from_hash({'one' => nil, 'two' => 2, 'three' => 3})).to eq({'two' => 2, 'three' => 3})
    end

    it "given {'one' => 1, 'two' => nil, 'three' => 3}, returns {'one' => 1, 'three' => 3}" do
      expect(remove_nils_from_hash({'one' => 1, 'two' => nil, 'three' => 3})).to eq({'one' => 1, 'three' => 3})
    end
  end

  describe 'key_value_swap' do
    it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns {1 => 'one', 2 => 'two', 3 => 'three'}" do
      expect(key_value_swap({'one' => 1, 'two' => 2, 'three' => 3})).to eq({1 => 'one', 2 => 'two', 3 => 'three'})
    end

    it "given {'name' => 'poppy', 'age' => 42, 'height' => 170}, returns {'poppy' => 'name', 42 => 'age', 170 => 'height'}" do
      expect(key_value_swap({'name' => 'poppy', 'age' => 42, 'height' => 170})).to eq({'poppy' => 'name', 42 => 'age', 170 => 'height'})
    end
  end
end
