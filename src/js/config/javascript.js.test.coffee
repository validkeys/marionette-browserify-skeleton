describe "Config ::", ->

  describe "-> ArrayInsert", ->

    test_array = []

    beforeEach =>
      @test_array = []

    it "should exist", (done) =>
      expect(test_array.insertAt).to.be.a "function"
      done()

    it "should inject correctly", (done) =>
      test_array.push 1
      test_array.push 2
      test_array.push 3
      expect(test_array[1]).to.equal 2

      test_array.insertAt(1,3)
      expect(test_array[1]).to.equal 3

      expect(_.indexOf(test_array, 4)).to.equal -1

      done()

  describe "-> Capitalize", ->

    string = "kyle"
    number = 123

    it "should exist", ->
      expect(string.capitalize).to.be.a "function"

    it "should capitalize", ->
      expect(string).to.equal "kyle"
      expect(string.capitalize()).to.equal "Kyle"
      expect(string).to.not.equal string.capitalize()
