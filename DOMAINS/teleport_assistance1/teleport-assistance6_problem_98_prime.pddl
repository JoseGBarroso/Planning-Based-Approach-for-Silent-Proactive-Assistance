(define (problem teleport-assistance6_problem_98_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos2-1 pos2-2 pos2-3 pos3-0 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-0 pos5-1 pos5-2  - place)

  (:init
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )

    (at-prime pos2-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-0)))
  (:metric minimize (total-cost))

)