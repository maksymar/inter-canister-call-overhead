import Canister17 "canister:canister_17";

actor Canister16 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister17.add(a, b, depth - 1);
    };
  };
};
