import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";
import Array "mo:base/Array";
module {
    let collection : [Text] = ["This", "is", "a", "test"];

    public func print() {
        Iter.iterate<Text>(
            Iter.fromArray<Text>(collection),
            func(elem : Text, i : Nat) { Debug.print(elem) },
        );
        for (index in collection.keys()) {
            Debug.print(collection[index]);
        };
    };

};
