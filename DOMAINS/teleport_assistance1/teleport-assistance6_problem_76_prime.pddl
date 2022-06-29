(define (problem teleport-assistance6_problem_76_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos0-2 pos1-2 pos2-2 pos3-2 pos3-3 pos4-0 pos4-2 pos4-3 pos5-3  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )

    (at-prime pos5-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-2)))
  (:metric minimize (total-cost))

)