describe('Javabuzz', function() {
  let javabuzz;
  beforeEach(function() {
    javabuzz = new Javabuzz();
  });

  describe('knows when a number is', function() {
    it('divisible by 15', function() {
      expect(javabuzz.isDivisibleByFifteen(15, 15)).toBe(true);
    });
    it('divisible by 3', function() {
      expect(javabuzz.isDivisibleByThree(3, 3)).toBe(true);
    });
    it('divisible by 5', function() {
      expect(javabuzz.isDivisibleByFive(5, 5)).toBe(true);
    });
  });

  describe('knows when a number is NOT', function() {
    it('divisible by 15', function() {
      expect(javabuzz.isDivisibleByFifteen(1, 15)).toBe(false);
    });
    it('divisible by 3', function() {
      expect(javabuzz.isDivisibleByThree(1, 3)).toBe(false);
    });
    it('divisible by 5', function() {
      expect(javabuzz.isDivisibleByFive(1, 5)).toBe(false);
    });
  });

  describe('when playing says', function(){
    it('"Javabuzz" when a number is divisible by 15', function() {
      expect(javabuzz.says(15)).toEqual("Javabuzz");
    });
    it('"Java" when a number is divisible by 3', function() {
      expect(javabuzz.says(3)).toEqual("Java");
    });
    it('"Java" when a number is divisible by 5', function() {
      expect(javabuzz.says(5)).toEqual("Buzz");
    });
    it('original number when it is not divisible by 3, 5 or both', function() {
      expect(javabuzz.says(1)).toEqual(1)
    });
  });
});