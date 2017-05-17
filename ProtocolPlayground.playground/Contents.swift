protocol MoneyTransferProtocol {
    func giveMoney()
}

class RichPeople:MoneyTransferProtocol {
    func giveMoney() {
        print("Give you 100 dollars")
    }
}

class PoorGuy {
    var helper:MoneyTransferProtocol?
    func needMoney(<#parameters#>) {
        helper?.giveMoney()
    }
}

let aPoorGuy = PoorGuy()
let aRichPeople = RichPeople()
aPoorGuy.helper = aRichPeople
aPoorGuy.needMoney()