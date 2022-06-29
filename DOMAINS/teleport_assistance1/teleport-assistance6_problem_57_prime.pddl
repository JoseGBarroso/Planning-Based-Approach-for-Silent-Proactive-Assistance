(define (problem teleport-assistance6_problem_57_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-3 pos2-0 pos2-2 pos2-3 pos3-0 pos3-1 pos3-2  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )

    (at-prime pos0-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-0)))
  (:metric minimize (total-cost))

)