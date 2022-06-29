(define (problem teleport-assistance6_problem_61_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-2 pos1-0 pos1-1 pos1-2 pos2-1 pos3-1 pos3-2 pos4-0 pos4-2 pos4-3  - place)

  (:init
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )

    (at-prime pos4-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-0)))
  (:metric minimize (total-cost))

)