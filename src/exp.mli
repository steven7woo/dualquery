(* Copyright (c) 2013-2014, The Trustees of the University of Pennsylvania
   All rights reserved.

   LICENSE: 3-clause BSD style.
   See the LICENSE file for details on licensing.
*)

open Dq
open Oracle

(* Little helper *)
val mk_exp_params : float -> int -> int -> (oracle_type * oracle) -> exp_param

(* Num of times -> exp_data, exp_params *)
val do_exp_single : int -> (exp_data * exp_param) -> unit

(* do_exp_iter : number_of_experiments x
                 (idx_of_exp ->  (n_times, data, parameters)) *)
val do_exp_iter   : int -> (int -> (int * exp_data * exp_param)) -> unit

module Print : sig

  val print_exp_start_data : Log.ctx -> out_channel -> exp_data -> exp_param -> unit

end

