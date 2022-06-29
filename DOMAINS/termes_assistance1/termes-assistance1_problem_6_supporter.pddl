(define (problem termes-assistance1_problem_6_supporter)
  (:domain termes-assistance1_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4  - position
    h0 h1 h2 h3  - numb)


  (:init
    (SUCC h3 h2)
    (SUCC h2 h1)
    (SUCC h1 h0)

    (NOT-IS-DEPOT pos0-0)
    (NOT-IS-DEPOT pos0-1)
    (NOT-IS-DEPOT pos0-2)
    (NOT-IS-DEPOT pos0-3)
    (NOT-IS-DEPOT pos0-4)
    (NOT-IS-DEPOT pos1-0)
    (NOT-IS-DEPOT pos1-1)
    (NOT-IS-DEPOT pos1-2)
    (NOT-IS-DEPOT pos1-3)
    (NOT-IS-DEPOT pos2-0)
    (NOT-IS-DEPOT pos2-1)
    (NOT-IS-DEPOT pos2-2)
    (NOT-IS-DEPOT pos2-3)
    (NOT-IS-DEPOT pos2-4)
    (prime-at pos1-1)
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos1-0)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (crone-not-has-block)
    (crone-not-has-prime)

    (height pos0-0 h0)
    (height pos0-1 h0)
    (height pos0-2 h0)
    (height pos0-3 h0)
    (height pos0-4 h0)
    (height pos1-0 h0)
    (height pos1-1 h0)
    (height pos1-2 h0)
    (height pos1-3 h0)
    (height pos1-4 h0)
    (height pos2-0 h0)
    (height pos2-1 h0)
    (height pos2-2 h0)
    (height pos2-3 h0)
    (height pos2-4 h0)
    (= (total-cost) 0)
  )

)