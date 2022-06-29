(define (problem teleport-assistance7_problem_120_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos1-0 pos1-6 pos2-1 pos2-3 pos2-4 pos2-5 pos2-6 pos3-0 pos3-2 pos3-6 pos4-1 pos4-3 pos4-4 pos4-5 pos4-6  - place)

  (:init
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-5 pos0-6 )
    (adj-walk pos0-6 pos0-5 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-5 pos4-6 )
    (adj-walk pos4-6 pos4-5 )

    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos0-6)
    (free pos1-0)
    (free pos1-6)
    (free pos2-1)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-0)
    (free pos3-2)
    (free pos3-6)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos4-6)

    (at-prime pos4-6)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-2)))
  (:metric minimize (total-cost))

)