import Array "mo:base/Array";
type SubscribeMessage = { callback : shared () -> () };
actor Publisher {
    var subs : [SubscribeMessage] = [];
    public func subscribe(sub : SubscribeMessage) {
        subs := Array.append<SubscribeMessage>(subs, [sub]);
    };
    public func publish() {
        for (sub in subs.vals()) {
            sub.callback();
        };
    };
};
