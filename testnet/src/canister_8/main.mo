import Canister9 "canister:canister_9";

actor Canister8 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister9.add(a, b, depth - 1);
    };
  };
};
