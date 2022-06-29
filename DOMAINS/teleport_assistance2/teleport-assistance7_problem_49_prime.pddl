(define (problem teleport-assistance7_problem_49_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos1-0 pos1-1 pos1-3 pos2-0 pos2-3 pos3-0 pos3-1 pos3-2 pos3-3  - place)

  (:init
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )

    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos2-0)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)

    (at-prime pos1-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-2)))
  (:metric minimize (total-cost))

)