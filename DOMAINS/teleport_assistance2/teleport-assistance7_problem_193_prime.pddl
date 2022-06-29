(define (problem teleport-assistance7_problem_193_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-1 pos0-3 pos0-6 pos0-7 pos1-4 pos1-7 pos3-2 pos4-0 pos4-7 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-6 pos6-0 pos6-1 pos6-4 pos7-0 pos7-4  - place)

  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-walk pos0-6 pos0-7 )
    (adj-walk pos0-7 pos0-6 )
    (adj-walk pos0-7 pos1-7 )
    (adj-walk pos1-7 pos0-7 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-0 pos6-0 )
    (adj-walk pos6-0 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-walk pos5-4 pos6-4 )
    (adj-walk pos6-4 pos5-4 )
    (adj-walk pos6-0 pos6-1 )
    (adj-walk pos6-1 pos6-0 )
    (adj-walk pos6-0 pos7-0 )
    (adj-walk pos7-0 pos6-0 )
    (adj-walk pos6-4 pos7-4 )
    (adj-walk pos7-4 pos6-4 )

    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos0-6)
    (free pos0-7)
    (free pos1-4)
    (free pos1-7)
    (free pos3-2)
    (free pos4-0)
    (free pos4-7)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos5-4)
    (free pos5-6)
    (free pos6-0)
    (free pos6-1)
    (free pos6-4)
    (free pos7-0)
    (free pos7-4)

    (at-prime pos6-4)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos5-2)))
  (:metric minimize (total-cost))

)