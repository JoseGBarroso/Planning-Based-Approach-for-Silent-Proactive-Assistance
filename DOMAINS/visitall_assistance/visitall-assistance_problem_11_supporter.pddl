(define (problem visitall-assistance_problem_11_supporter)
  (:domain visitall-assistance_supporter)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node3)
    (connected node1 node4)
    (connected node1 node6)
    (connected node1 node8)
    (connected node2 node3)
    (connected node2 node4)
    (connected node2 node7)
    (connected node3 node4)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node7)
    (connected node7 node1)
    (connected node7 node8)
    (connected node8 node1)
    (not-connected node1 node5)
    (not-connected node1 node7)
    (not-connected node1 node9)
    (not-connected node2 node1)
    (not-connected node2 node5)
    (not-connected node2 node6)
    (not-connected node2 node8)
    (not-connected node2 node9)
    (not-connected node3 node1)
    (not-connected node3 node2)
    (not-connected node3 node5)
    (not-connected node3 node6)
    (not-connected node3 node7)
    (not-connected node3 node8)
    (not-connected node3 node9)
    (not-connected node4 node1)
    (not-connected node4 node2)
    (not-connected node4 node3)
    (not-connected node4 node6)
    (not-connected node4 node7)
    (not-connected node4 node8)
    (not-connected node4 node9)
    (not-connected node5 node1)
    (not-connected node5 node2)
    (not-connected node5 node3)
    (not-connected node5 node4)
    (not-connected node5 node7)
    (not-connected node5 node8)
    (not-connected node5 node9)
    (not-connected node6 node1)
    (not-connected node6 node2)
    (not-connected node6 node3)
    (not-connected node6 node4)
    (not-connected node6 node5)
    (not-connected node6 node8)
    (not-connected node6 node9)
    (not-connected node7 node2)
    (not-connected node7 node3)
    (not-connected node7 node4)
    (not-connected node7 node5)
    (not-connected node7 node6)
    (not-connected node7 node9)
    (not-connected node8 node2)
    (not-connected node8 node3)
    (not-connected node8 node4)
    (not-connected node8 node5)
    (not-connected node8 node6)
    (not-connected node8 node7)
    (not-connected node8 node9)
    (not-connected node9 node1)
    (not-connected node9 node2)
    (not-connected node9 node3)
    (not-connected node9 node4)
    (not-connected node9 node5)
    (not-connected node9 node6)
    (not-connected node9 node7)
    (not-connected node9 node8)

    (= (total-cost) 0)
  )


)