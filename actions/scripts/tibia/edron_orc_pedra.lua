-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
gatepos = {x=33171, y=31897, z=8, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 2468 and item.itemid == 1945 and getgate.itemid == 1285 then
 doRemoveItem(getgate.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 2468 and item.itemid == 1946 and getgate.itemid == 0 then
 doCreateItem(1285,1,gatepos)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Not Possible")
end
return true
end