(define (problem termes-assistance1_problem_8_prime)
  (:domain termes-assistance1_prime)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3  - position
    h0 h1 h2 h3  - numb)


  (:init
    (NEIGHBOR pos0-0 pos0-1 )
    (NEIGHBOR pos0-1 pos0-0 )
    (NEIGHBOR pos0-0 pos1-0 )
    (NEIGHBOR pos1-0 pos0-0 )
    (NEIGHBOR pos0-1 pos0-2 )
    (NEIGHBOR pos0-2 pos0-1 )
    (NEIGHBOR pos0-1 pos1-1 )
    (NEIGHBOR pos1-1 pos0-1 )
    (NEIGHBOR pos0-2 pos0-3 )
    (NEIGHBOR pos0-3 pos0-2 )
    (NEIGHBOR pos0-2 pos1-2 )
    (NEIGHBOR pos1-2 pos0-2 )
    (NEIGHBOR pos0-3 pos1-3 )
    (NEIGHBOR pos1-3 pos0-3 )
    (NEIGHBOR pos1-0 pos1-1 )
    (NEIGHBOR pos1-1 pos1-0 )
    (NEIGHBOR pos1-0 pos2-0 )
    (NEIGHBOR pos2-0 pos1-0 )
    (NEIGHBOR pos1-1 pos1-2 )
    (NEIGHBOR pos1-2 pos1-1 )
    (NEIGHBOR pos1-1 pos2-1 )
    (NEIGHBOR pos2-1 pos1-1 )
    (NEIGHBOR pos1-2 pos1-3 )
    (NEIGHBOR pos1-3 pos1-2 )
    (NEIGHBOR pos1-2 pos2-2 )
    (NEIGHBOR pos2-2 pos1-2 )
    (NEIGHBOR pos1-3 pos2-3 )
    (NEIGHBOR pos2-3 pos1-3 )
    (NEIGHBOR pos2-0 pos2-1 )
    (NEIGHBOR pos2-1 pos2-0 )
    (NEIGHBOR pos2-0 pos3-0 )
    (NEIGHBOR pos3-0 pos2-0 )
    (NEIGHBOR pos2-1 pos2-2 )
    (NEIGHBOR pos2-2 pos2-1 )
    (NEIGHBOR pos2-1 pos3-1 )
    (NEIGHBOR pos3-1 pos2-1 )
    (NEIGHBOR pos2-2 pos2-3 )
    (NEIGHBOR pos2-3 pos2-2 )
    (NEIGHBOR pos2-2 pos3-2 )
    (NEIGHBOR pos3-2 pos2-2 )
    (NEIGHBOR pos2-3 pos3-3 )
    (NEIGHBOR pos3-3 pos2-3 )
    (NEIGHBOR pos3-0 pos3-1 )
    (NEIGHBOR pos3-1 pos3-0 )
    (NEIGHBOR pos3-0 pos4-0 )
    (NEIGHBOR pos4-0 pos3-0 )
    (NEIGHBOR pos3-1 pos3-2 )
    (NEIGHBOR pos3-2 pos3-1 )
    (NEIGHBOR pos3-1 pos4-1 )
    (NEIGHBOR pos4-1 pos3-1 )
    (NEIGHBOR pos3-2 pos3-3 )
    (NEIGHBOR pos3-3 pos3-2 )
    (NEIGHBOR pos3-2 pos4-2 )
    (NEIGHBOR pos4-2 pos3-2 )
    (NEIGHBOR pos3-3 pos4-3 )
    (NEIGHBOR pos4-3 pos3-3 )
    (NEIGHBOR pos4-0 pos4-1 )
    (NEIGHBOR pos4-1 pos4-0 )
    (NEIGHBOR pos4-1 pos4-2 )
    (NEIGHBOR pos4-2 pos4-1 )
    (NEIGHBOR pos4-2 pos4-3 )
    (NEIGHBOR pos4-3 pos4-2 )

    (SUCC h3 h2)
    (SUCC h2 h1)
    (SUCC h1 h0)

    (IS-DEPOT pos1-0)
    (NOT-IS-DEPOT pos0-0)
    (NOT-IS-DEPOT pos0-1)
    (NOT-IS-DEPOT pos0-2)
    (NOT-IS-DEPOT pos0-3)
    (NOT-IS-DEPOT pos1-1)
    (NOT-IS-DEPOT pos1-2)
    (NOT-IS-DEPOT pos1-3)
    (NOT-IS-DEPOT pos2-0)
    (NOT-IS-DEPOT pos2-1)
    (NOT-IS-DEPOT pos2-2)
    (NOT-IS-DEPOT pos2-3)
    (NOT-IS-DEPOT pos3-0)
    (NOT-IS-DEPOT pos3-1)
    (NOT-IS-DEPOT pos3-2)
    (NOT-IS-DEPOT pos3-3)
    (NOT-IS-DEPOT pos4-0)
    (NOT-IS-DEPOT pos4-1)
    (NOT-IS-DEPOT pos4-2)
    (NOT-IS-DEPOT pos4-3)
    (prime-at pos3-0)
    (free pos0-0)
    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (not-has-block)

    (height pos0-0 h0)
    (height pos0-1 h0)
    (height pos0-2 h0)
    (height pos0-3 h0)
    (height pos1-0 h0)
    (height pos1-1 h0)
    (height pos1-2 h0)
    (height pos1-3 h0)
    (height pos2-0 h0)
    (height pos2-1 h0)
    (height pos2-2 h0)
    (height pos2-3 h0)
    (height pos3-0 h0)
    (height pos3-1 h0)
    (height pos3-2 h0)
    (height pos3-3 h0)
    (height pos4-0 h0)
    (height pos4-1 h0)
    (height pos4-2 h0)
    (height pos4-3 h0)
    (= (total-cost) 0)
  )

  (:goal (and 
    (height pos0-2 h2)
    (height pos4-2 h3)
    (height pos4-3 h2)
    (height pos0-0 h0)
    (height pos0-1 h0)
    (height pos0-3 h0)
    (height pos1-0 h0)
    (height pos1-1 h0)
    (height pos1-2 h0)
    (height pos1-3 h0)
    (height pos2-0 h0)
    (height pos2-1 h0)
    (height pos2-2 h0)
    (height pos2-3 h0)
    (height pos3-0 h0)
    (height pos3-1 h0)
    (height pos3-2 h0)
    (height pos3-3 h0)
    (height pos4-0 h0)
    (height pos4-1 h0)
  ))
  (:metric minimize (total-cost))

)