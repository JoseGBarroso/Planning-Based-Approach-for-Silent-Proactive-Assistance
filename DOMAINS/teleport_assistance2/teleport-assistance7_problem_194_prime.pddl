(define (problem teleport-assistance7_problem_194_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-3 pos1-0 pos1-1 pos1-3 pos1-4 pos2-0 pos2-3 pos3-0 pos3-2 pos3-3 pos4-0 pos4-1 pos4-2 pos4-3 pos5-1 pos5-3 pos5-4 pos6-1 pos6-4 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4  - place)

  (:init
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-walk pos5-4 pos6-4 )
    (adj-walk pos6-4 pos5-4 )
    (adj-walk pos6-1 pos7-1 )
    (adj-walk pos7-1 pos6-1 )
    (adj-walk pos6-4 pos7-4 )
    (adj-walk pos7-4 pos6-4 )
    (adj-walk pos7-0 pos7-1 )
    (adj-walk pos7-1 pos7-0 )
    (adj-walk pos7-1 pos7-2 )
    (adj-walk pos7-2 pos7-1 )
    (adj-walk pos7-2 pos7-3 )
    (adj-walk pos7-3 pos7-2 )
    (adj-walk pos7-3 pos7-4 )
    (adj-walk pos7-4 pos7-3 )

    (free pos0-0)
    (free pos0-3)
    (free pos1-0)
    (free pos1-1)
    (free pos1-3)
    (free pos1-4)
    (free pos2-0)
    (free pos2-3)
    (free pos3-0)
    (free pos3-2)
    (free pos3-3)
    (free pos4-0)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos5-1)
    (free pos5-3)
    (free pos5-4)
    (free pos6-1)
    (free pos6-4)
    (free pos7-0)
    (free pos7-1)
    (free pos7-2)
    (free pos7-3)
    (free pos7-4)

    (at-prime pos0-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos7-1)))
  (:metric minimize (total-cost))

)