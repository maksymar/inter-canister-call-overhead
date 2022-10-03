import Canister1 "canister:canister_1";
import Time "mo:base/Time";

actor Canister0 {
  func elapsedTimeMilliSeconds(start : Time.Time) : Time.Time {
    // Initial Time.Time is nanoseconds.
    return (Time.now() - start) / 1_000_000;
  };

  public func compute_iterations(time_ms : Nat, depth : Nat) : async Nat {
    let start = Time.now();

    var i = 0;
    while (0 < depth and elapsedTimeMilliSeconds(start) < time_ms) {
      i += 1;
      let x = await Canister1.add(1, 1, depth - 1);
    };

    return i;
  };

  public func compute_time(iterations : Nat, depth : Nat) : async Time.Time {
    let start = Time.now();

    var i = 0;
    while (0 < depth and i < iterations) {
      i += 1;
      let x = await Canister1.add(1, 1, depth - 1);
    };

    return elapsedTimeMilliSeconds(start);
  };

};
