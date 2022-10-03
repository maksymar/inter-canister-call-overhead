import Canister2 "canister:canister_2";

actor Canister1 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister2.add(a, b, depth - 1);
    };
  };
};
