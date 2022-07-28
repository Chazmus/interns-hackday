function checkForCollision(object1, object2)
    box1 = createBox(object1)
    box2 = createBox(object2)

    hasCollision = intersection(box1, box2)
    hasCollision = hasCollision or intersection(box2, box1)
    return hasCollision
end

function createBox(o)
    box = {}
    
    box.bl={o.x,o.y+o.height*8}
    box.br={o.x+o.width*8,o.y+o.height*8}
    box.tl={o.x,o.y}
    box.tr={o.x+o.width*8,o.y}
    
    return box
end

function intersection(box1,box2)
    hasIntersection = isPointInBox(box1, box2.tl)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.tr)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.bl)
    hasIntersection = hasIntersection or isPointInBox(box1, box2.br)
    return hasIntersection
end

function isPointInBox(box,point)
    isInXRange = point[1] >= box.tl[1] and point[1] <= box.tr[1]
    isInYRange = point[2] >= box.tl[2] and point[2] <= box.bl[2]
    return isInXRange and isInYRange
end