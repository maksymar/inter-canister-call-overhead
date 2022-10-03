import Canister6 "canister:canister_6";

actor Canister5 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister6.add(a, b, depth - 1);
    };
  };
};
