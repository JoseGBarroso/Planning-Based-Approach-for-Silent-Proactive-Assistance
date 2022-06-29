(define (problem visitall-assistance_problem_31_supporter)
  (:domain visitall-assistance_supporter)
  (:objects
    node1 node2 node3 node4 node5  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node3)
    (connected node2 node3)
    (connected node3 node4)
    (connected node4 node2)
    (connected node4 node5)
    (not-connected node1 node4)
    (not-connected node1 node5)
    (not-connected node2 node1)
    (not-connected node2 node4)
    (not-connected node2 node5)
    (not-connected node3 node1)
    (not-connected node3 node2)
    (not-connected node3 node5)
    (not-connected node4 node1)
    (not-connected node4 node3)
    (not-connected node5 node1)
    (not-connected node5 node2)
    (not-connected node5 node3)
    (not-connected node5 node4)

    (= (total-cost) 0)
  )


)