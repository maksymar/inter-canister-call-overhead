import Canister16 "canister:canister_16";

actor Canister15 {
  public func add(a : Nat, b : Nat, depth : Nat) : async Nat {
    if (depth <= 0) {
      return a + b;
    } else {
      return await Canister16.add(a, b, depth - 1);
    };
  };
};
