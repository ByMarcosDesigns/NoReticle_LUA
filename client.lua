local _HideHudComponentThisFrame = HideHudComponentThisFrame

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

    	local ped = PlayerPedId()
		local sleep = true
		
		local currentWeaponHash = GetSelectedPedWeapon(ped)

		if not (currentWeaponHash == -1569615261) then
			sleep = false
			if not (currentWeaponHash == 100416529 or currentWeaponHash == 205991906 or currentWeaponHash == -952879014 or currentWeaponHash == 177293209) then
				_HideHudComponentThisFrame(14)
			end
		end

		if sleep then
			Citizen.Wait(600)
		end
	end
end)
