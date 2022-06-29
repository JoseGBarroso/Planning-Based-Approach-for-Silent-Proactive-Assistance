(define (problem joint_visitall-assistance_problem_16)
(:domain joint_visitall-assistance_domain)
(:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (connected node1 node2)
    (connected node1 node4)
    (connected node1 node5)
    (connected node2 node3)
    (connected node2 node10)
    (connected node2 node11)
    (connected node3 node1)
    (connected node3 node4)
    (connected node3 node11)
    (connected node4 node3)
    (connected node4 node5)
    (connected node5 node3)
    (connected node5 node6)
    (connected node6 node7)
    (connected node6 node11)
    (connected node7 node8)
    (connected node8 node9)
    (connected node9 node10)
    (connected node10 node11)
    (not-connected node1 node3)
    (not-connected node1 node6)
    (not-connected node1 node7)
    (not-connected node1 node8)
    (not-connected node1 node9)
    (not-connected node1 node10)
    (not-connected node1 node11)
    (not-connected node2 node1)
    (not-connected node2 node4)
    (not-connected node2 node5)
    (not-connected node2 node6)
    (not-connected node2 node7)
    (not-connected node2 node8)
    (not-connected node2 node9)
    (not-connected node3 node2)
    (not-connected node3 node5)
    (not-connected node3 node6)
    (not-connected node3 node7)
    (not-connected node3 node8)
    (not-connected node3 node9)
    (not-connected node3 node10)
    (not-connected node4 node1)
    (not-connected node4 node2)
    (not-connected node4 node6)
    (not-connected node4 node7)
    (not-connected node4 node8)
    (not-connected node4 node9)
    (not-connected node4 node10)
    (not-connected node4 node11)
    (not-connected node5 node1)
    (not-connected node5 node2)
    (not-connected node5 node4)
    (not-connected node5 node7)
    (not-connected node5 node8)
    (not-connected node5 node9)
    (not-connected node5 node10)
    (not-connected node5 node11)
    (not-connected node6 node1)
    (not-connected node6 node2)
    (not-connected node6 node3)
    (not-connected node6 node4)
    (not-connected node6 node5)
    (not-connected node6 node8)
    (not-connected node6 node9)
    (not-connected node6 node10)
    (not-connected node7 node1)
    (not-connected node7 node2)
    (not-connected node7 node3)
    (not-connected node7 node4)
    (not-connected node7 node5)
    (not-connected node7 node6)
    (not-connected node7 node9)
    (not-connected node7 node10)
    (not-connected node7 node11)
    (not-connected node8 node1)
    (not-connected node8 node2)
    (not-connected node8 node3)
    (not-connected node8 node4)
    (not-connected node8 node5)
    (not-connected node8 node6)
    (not-connected node8 node7)
    (not-connected node8 node10)
    (not-connected node8 node11)
    (not-connected node9 node1)
    (not-connected node9 node2)
    (not-connected node9 node3)
    (not-connected node9 node4)
    (not-connected node9 node5)
    (not-connected node9 node6)
    (not-connected node9 node7)
    (not-connected node9 node8)
    (not-connected node9 node11)
    (not-connected node10 node1)
    (not-connected node10 node2)
    (not-connected node10 node3)
    (not-connected node10 node4)
    (not-connected node10 node5)
    (not-connected node10 node6)
    (not-connected node10 node7)
    (not-connected node10 node8)
    (not-connected node10 node9)
    (not-connected node11 node1)
    (not-connected node11 node2)
    (not-connected node11 node3)
    (not-connected node11 node4)
    (not-connected node11 node5)
    (not-connected node11 node6)
    (not-connected node11 node7)
    (not-connected node11 node8)
    (not-connected node11 node9)
    (not-connected node11 node10)
    (at-prime node10)
    (visited node10)
)

(:goal
  (and
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
    (visited node7)
    (visited node8)
    (visited node9)
    (visited node11)
  )
)
(:metric minimize (total-cost))
)
