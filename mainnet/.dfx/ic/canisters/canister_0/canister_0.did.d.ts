import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export type Time = bigint;
export interface _SERVICE {
  'compute_iterations' : ActorMethod<[bigint, bigint], bigint>,
  'compute_time' : ActorMethod<[bigint, bigint], Time>,
}
