import Principal "mo:base/Principal";
import Error "mo:base/Error";
actor Self {
    public shared (context) func is_owner() : async Bool {
        let owner = Principal.fromActor(Self);
        let caller = context.caller;
        owner == caller;
    };

    public func assert_owner() {
        if is_owner () { throw Error.reject("") };

    };
};
