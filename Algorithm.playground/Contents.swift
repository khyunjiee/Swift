import UIKit

// 큐
struct Queue<T> {
    private var list = [T]()
    
    var isEmpty: Bool { return self.list.isEmpty }
    var front: T? { return self.list.first }
    
    mutating func enqueue(_ item: T) { self.list.append(item) }
    mutating func dequeue() -> T? {
        guard self.isEmpty == false else { return nil }
        return self.list.removeFirst()
    }
    
}

// 간선
class Node<T> {
    let value: T
    var edges = [Edge<T>]()
    var visited = false
    
    init(value: T) {
        self.value = value
    }
    
    func appendEdgeTo(_ node: Node<T>) {
        let edge = Edge<T>(from: self, to: node)
        self.edges.append(edge)
    }
}

// 그래프 엣지
class Edge<T> {
    weak var source: Node<T>?
    let destination: Node<T>
    
    init(from source: Node<T>, to destination: Node<T>) {
        self.source = source
        self.destination = destination
    }
}

func practiceBFS(n: Int, edges: [(Int, Int)]) {
    let nodes = (0..<n).map({ Node<Int>(value: $0 + 1) })
    for (from, to) in edges {
        nodes[from - 1].appendEdgeTo(nodes[to - 1])
    }
    
    var shortest = Array(repeating: [1], count: n)
    
    var queue = Queue<Node<Int>>()
    queue.enqueue(nodes[0])
    nodes[0].visited = true
    
    while let node = queue.dequeue() {
        for edge in node.edges {
            let destination = edge.destination
            guard destination.visited == false else { continue }
            
            queue.enqueue(destination)
            destination.visited = true
            
            shortest[destination.value - 1] = shortest[node.value-1] + [destination.value]
        }
    }
    print(shortest)
}

practiceBFS(n: 6, edges: [(1, 5), (2, 4), (2, 5), (3, 2), (3, 6), (4, 2), (4, 5), (5, 3), (5, 6)])
