---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

if config.InstantOmegaCast.Enabled then
    local weaponFile = rom.path.combine(rom.paths.Content, 'Game/Weapons/PlayerWeapons.sjson')

	sjson.hook(weaponFile, function(sjsonData)
		return sjson_CastWeapon(sjsonData)
	end)

	function sjson_CastWeapon(sjsonData)
		for _, v in ipairs(sjsonData.Weapons) do
			if v.Name == "WeaponCast" then
                v.FireGraphic = "Melinoe_Cast_Fire"
                v.MinChargeToFire = 0
            elseif v.Name == "WeaponCastArm" then
                v.ForceReleaseOnFire = true
                v.FireOnRelease = false
                v.MinChargeToFire = 0
            elseif v.Name == "WeaponAnywhereCast" then
                v.MinChargeToFire = 0
                v.RootOwnerWhileFiring = false
                v.BlockMoveInput = false
                v.CancelMovement = false
		        v.ChargeCancelMovement = false
			end
		end
	end
end