class Person {
    var firstname:String
    var lastname:String
    var fullname:String
    init() {
        firstname = "Chuck"
        lastname = "Yang"
        fullname = firstname + lastname
        print("a person is being initialized")
    }
    deinit {
        print("a person is being deinitialized")
    }
}


var person1:Person? = Person()
person1?.firstname
person1 = nil