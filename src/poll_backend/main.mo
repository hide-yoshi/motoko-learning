import RBTree "mo:base/RBTree";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
actor {
  var question : Text = "enter your question";

  var options : RBTree.RBTree<Nat, Text> = RBTree.RBTree(Nat.compare);
  // new variable `optionCounter` to store value of the next option id
  var optionCounter = 0;

  // the parameter newOption defined the string value of the new option
  // the method returns a value of the new option that was just added
  public func addOption(newOption : Text) : async Nat {
    optionCounter += 1;

    // we use the method RBTree.put() to add a value to the map
    options.put(optionCounter, newOption);

    // the last value in the function closure is the result
    // this line could also be "return optionCounter;"
    optionCounter;
  };
  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
  public func deleteOption(optionId : Nat) {
    // RBTree.delete() removes the element from the map
    options.delete(optionId);
  };

  public func updateOption(optionId : Nat, option : Text) {
    // RBTree.put() replaces the element with a new value
    options.put(optionId, option);
  };
  // the method returns an array of tuples (Nat, Text)
  public query func getOptions() : async [(Nat, Text)] {
    Iter.toArray(options.entries());
  };
  public query func getQuestion() : async Text { question };

  public func setQuestion(q : Text) { question := q };
};
