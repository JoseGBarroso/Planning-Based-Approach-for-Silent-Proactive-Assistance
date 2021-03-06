(define (problem joint_termes-assistance1_problem_10)
(:domain joint_termes-assistance1_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos1-0 pos1-1 pos1-2 pos2-0 pos2-1 pos2-2 - position
    h0 h1 h2 h3 - numb
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (succ h3 h2)
    (succ h2 h1)
    (succ h1 h0)
    (not-is-depot pos0-0)
    (not-is-depot pos0-1)
    (not-is-depot pos0-2)
    (not-is-depot pos1-0)
    (not-is-depot pos1-1)
    (not-is-depot pos1-2)
    (not-is-depot pos2-1)
    (not-is-depot pos2-2)
    (prime-at pos0-2)
    (free pos0-0)
    (free pos0-1)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (crone-not-has-block)
    (crone-not-has-prime)
    (height pos0-0 h0)
    (height pos0-1 h0)
    (height pos0-2 h0)
    (height pos1-0 h0)
    (height pos1-1 h0)
    (height pos1-2 h0)
    (height pos2-0 h0)
    (height pos2-1 h0)
    (height pos2-2 h0)
    (neighbor pos0-0 pos0-1)
    (neighbor pos0-1 pos0-0)
    (neighbor pos0-0 pos1-0)
    (neighbor pos1-0 pos0-0)
    (neighbor pos0-1 pos0-2)
    (neighbor pos0-2 pos0-1)
    (neighbor pos0-1 pos1-1)
    (neighbor pos1-1 pos0-1)
    (neighbor pos0-2 pos1-2)
    (neighbor pos1-2 pos0-2)
    (neighbor pos1-0 pos1-1)
    (neighbor pos1-1 pos1-0)
    (neighbor pos1-0 pos2-0)
    (neighbor pos2-0 pos1-0)
    (neighbor pos1-1 pos1-2)
    (neighbor pos1-2 pos1-1)
    (neighbor pos1-1 pos2-1)
    (neighbor pos2-1 pos1-1)
    (neighbor pos1-2 pos2-2)
    (neighbor pos2-2 pos1-2)
    (neighbor pos2-0 pos2-1)
    (neighbor pos2-1 pos2-0)
    (neighbor pos2-1 pos2-2)
    (neighbor pos2-2 pos2-1)
    (is-depot pos2-0)
    (not-has-block)
)

(:goal
  (and
    (height pos1-2 h3)
    (height pos0-0 h0)
    (height pos0-1 h0)
    (height pos0-2 h0)
    (height pos1-0 h0)
    (height pos1-1 h0)
    (height pos2-0 h0)
    (height pos2-1 h0)
    (height pos2-2 h0)
  )
)
(:metric minimize (total-cost))
)
