(define (problem teleport-assistance6_problem_150_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos0-2 pos1-0 pos1-1 pos2-1 pos2-3 pos3-1 pos4-0 pos4-1 pos4-2  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )

    (at-prime pos1-0)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-2)))
  (:metric minimize (total-cost))

)