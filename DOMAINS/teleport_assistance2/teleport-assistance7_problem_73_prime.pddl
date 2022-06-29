(define (problem teleport-assistance7_problem_73_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos0-2 pos0-3 pos1-0 pos1-1 pos1-2 pos1-3 pos2-1 pos2-2 pos3-0 pos3-2  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )

    (free pos0-1)
    (free pos0-2)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos2-1)
    (free pos2-2)
    (free pos3-0)
    (free pos3-2)

    (at-prime pos3-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-1)))
  (:metric minimize (total-cost))

)