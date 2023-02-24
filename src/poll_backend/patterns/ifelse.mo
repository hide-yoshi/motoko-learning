import Bool "mo:base/Bool";
import Func "mo:base/Func";
import Text "mo:base/Text";
module {

    public func isEven(num : Int) : Bool {
        num % 2 == 0;
    };

    public func isOdd(num : Int) : Bool {
        return not isEven(num);
    };

    public func switch_is1(num : Int) : Bool {
        switch num {
            case 1 return true;
            case _ return false;
        };
    };

};
