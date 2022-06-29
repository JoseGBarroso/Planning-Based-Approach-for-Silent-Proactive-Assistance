(define (problem joint_visitall-assistance_problem_4)
(:domain joint_visitall-assistance_domain)
(:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11 node12 node13 node14 node15 - place
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (connected node1 node2)
    (connected node2 node3)
    (connected node2 node11)
    (connected node3 node4)
    (connected node4 node2)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node7)
    (connected node6 node10)
    (connected node6 node11)
    (connected node7 node8)
    (connected node8 node9)
    (connected node9 node10)
    (connected node10 node11)
    (connected node11 node12)
    (connected node12 node13)
    (connected node13 node14)
    (connected node14 node8)
    (connected node14 node15)
    (connected node15 node8)
    (not-connected node1 node3)
    (not-connected node1 node4)
    (not-connected node1 node5)
    (not-connected node1 node6)
    (not-connected node1 node7)
    (not-connected node1 node8)
    (not-connected node1 node9)
    (not-connected node1 node10)
    (not-connected node1 node11)
    (not-connected node1 node12)
    (not-connected node1 node13)
    (not-connected node1 node14)
    (not-connected node1 node15)
    (not-connected node2 node1)
    (not-connected node2 node4)
    (not-connected node2 node5)
    (not-connected node2 node6)
    (not-connected node2 node7)
    (not-connected node2 node8)
    (not-connected node2 node9)
    (not-connected node2 node10)
    (not-connected node2 node12)
    (not-connected node2 node13)
    (not-connected node2 node14)
    (not-connected node2 node15)
    (not-connected node3 node1)
    (not-connected node3 node2)
    (not-connected node3 node5)
    (not-connected node3 node6)
    (not-connected node3 node7)
    (not-connected node3 node8)
    (not-connected node3 node9)
    (not-connected node3 node10)
    (not-connected node3 node11)
    (not-connected node3 node12)
    (not-connected node3 node13)
    (not-connected node3 node14)
    (not-connected node3 node15)
    (not-connected node4 node1)
    (not-connected node4 node3)
    (not-connected node4 node6)
    (not-connected node4 node7)
    (not-connected node4 node8)
    (not-connected node4 node9)
    (not-connected node4 node10)
    (not-connected node4 node11)
    (not-connected node4 node12)
    (not-connected node4 node13)
    (not-connected node4 node14)
    (not-connected node4 node15)
    (not-connected node5 node1)
    (not-connected node5 node2)
    (not-connected node5 node3)
    (not-connected node5 node4)
    (not-connected node5 node7)
    (not-connected node5 node8)
    (not-connected node5 node9)
    (not-connected node5 node10)
    (not-connected node5 node11)
    (not-connected node5 node12)
    (not-connected node5 node13)
    (not-connected node5 node14)
    (not-connected node5 node15)
    (not-connected node6 node1)
    (not-connected node6 node2)
    (not-connected node6 node3)
    (not-connected node6 node4)
    (not-connected node6 node5)
    (not-connected node6 node8)
    (not-connected node6 node9)
    (not-connected node6 node12)
    (not-connected node6 node13)
    (not-connected node6 node14)
    (not-connected node6 node15)
    (not-connected node7 node1)
    (not-connected node7 node2)
    (not-connected node7 node3)
    (not-connected node7 node4)
    (not-connected node7 node5)
    (not-connected node7 node6)
    (not-connected node7 node9)
    (not-connected node7 node10)
    (not-connected node7 node11)
    (not-connected node7 node12)
    (not-connected node7 node13)
    (not-connected node7 node14)
    (not-connected node7 node15)
    (not-connected node8 node1)
    (not-connected node8 node2)
    (not-connected node8 node3)
    (not-connected node8 node4)
    (not-connected node8 node5)
    (not-connected node8 node6)
    (not-connected node8 node7)
    (not-connected node8 node10)
    (not-connected node8 node11)
    (not-connected node8 node12)
    (not-connected node8 node13)
    (not-connected node8 node14)
    (not-connected node8 node15)
    (not-connected node9 node1)
    (not-connected node9 node2)
    (not-connected node9 node3)
    (not-connected node9 node4)
    (not-connected node9 node5)
    (not-connected node9 node6)
    (not-connected node9 node7)
    (not-connected node9 node8)
    (not-connected node9 node11)
    (not-connected node9 node12)
    (not-connected node9 node13)
    (not-connected node9 node14)
    (not-connected node9 node15)
    (not-connected node10 node1)
    (not-connected node10 node2)
    (not-connected node10 node3)
    (not-connected node10 node4)
    (not-connected node10 node5)
    (not-connected node10 node6)
    (not-connected node10 node7)
    (not-connected node10 node8)
    (not-connected node10 node9)
    (not-connected node10 node12)
    (not-connected node10 node13)
    (not-connected node10 node14)
    (not-connected node10 node15)
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
    (not-connected node11 node13)
    (not-connected node11 node14)
    (not-connected node11 node15)
    (not-connected node12 node1)
    (not-connected node12 node2)
    (not-connected node12 node3)
    (not-connected node12 node4)
    (not-connected node12 node5)
    (not-connected node12 node6)
    (not-connected node12 node7)
    (not-connected node12 node8)
    (not-connected node12 node9)
    (not-connected node12 node10)
    (not-connected node12 node11)
    (not-connected node12 node14)
    (not-connected node12 node15)
    (not-connected node13 node1)
    (not-connected node13 node2)
    (not-connected node13 node3)
    (not-connected node13 node4)
    (not-connected node13 node5)
    (not-connected node13 node6)
    (not-connected node13 node7)
    (not-connected node13 node8)
    (not-connected node13 node9)
    (not-connected node13 node10)
    (not-connected node13 node11)
    (not-connected node13 node12)
    (not-connected node13 node15)
    (not-connected node14 node1)
    (not-connected node14 node2)
    (not-connected node14 node3)
    (not-connected node14 node4)
    (not-connected node14 node5)
    (not-connected node14 node6)
    (not-connected node14 node7)
    (not-connected node14 node9)
    (not-connected node14 node10)
    (not-connected node14 node11)
    (not-connected node14 node12)
    (not-connected node14 node13)
    (not-connected node15 node1)
    (not-connected node15 node2)
    (not-connected node15 node3)
    (not-connected node15 node4)
    (not-connected node15 node5)
    (not-connected node15 node6)
    (not-connected node15 node7)
    (not-connected node15 node9)
    (not-connected node15 node10)
    (not-connected node15 node11)
    (not-connected node15 node12)
    (not-connected node15 node13)
    (not-connected node15 node14)
    (at-prime node15)
    (visited node15)
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
    (visited node10)
    (visited node11)
    (visited node12)
    (visited node13)
    (visited node14)
  )
)
(:metric minimize (total-cost))
)
