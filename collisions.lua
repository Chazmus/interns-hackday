function checkForLazerCollision(object, lazer)
    return isPointInBox(createBox(object), lazer)
end

function checkForCollision(object1, object2)
    return intersection(createBox(object1), createBox(object2))
end

function createBox(o)
    box = {
        tl={x = o.x, y = o.y},
        tr={x = o.x, y = o.y},
        bl={x = o.x, y = o.y},
        br={x = o.x, y = o.y},
    }
    
    if(o.height ~= nil and o.width ~= nil) then
        box.tr.x += (o.width * tile_width)
        box.bl.y += (o.height * tile_height)
        box.br.x += (o.width * tile_width)
        box.br.y += (o.height * tile_height)
    end
    
    return box
end

function intersection(box1, box2)
    return (
            (isPointInBox(box1, box2.tl)
            or isPointInBox(box1, box2.tr)
            or isPointInBox(box1, box2.bl)
            or isPointInBox(box1, box2.br))
        or 
            (isPointInBox(box2, box1.tl)
            or isPointInBox(box2, box1.tr)
            or isPointInBox(box2, box1.bl)
            or isPointInBox(box2, box1.br))
    )
end

function isPointInBox(box, point)
    if (box == nil or point == nil) then
        return false
    end
    isInXRange = point.x >= box.tl.x and point.x <= box.tr.x
    isInYRange = point.y >= box.tl.y and point.y <= box.bl.y
    return isInXRange and isInYRange
end