addCommandHandler( "poop",
	function( plr )	
		if getElementData(plr,"tazepoop") ~= true then
		
			for _,p in ipairs (getElementsByType("player")) do
				triggerClientEvent("syncSong", resourceRoot, plr)
			end
			
			setElementData(plr,"tazepoop",true)
			x, y, z = getElementPosition( plr )
			setPedAnimation( plr, "ped", "cower", 4000, false, true, false )
			local int =  getElementInterior(plr)
			local dim = getElementDimension ( plr )
			PP = createObject ( 2814, x, y, z-0.8, 0, 0, 180 )
			setElementDimension(PP,dim)
			setElementInterior(PP,int)
			
			setTimer( function ( )
				setElementData(plr,"tazepoop",nil)
			end, 180000, 1) -- Player cannot spam
			setTimer( function ( )
				destroyElement( PP )
			end, 28000, 1) -- Delete the model
		end
	end
)