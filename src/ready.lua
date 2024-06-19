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
				v.ForceReleaseOnFire = false
                v.FullyAutomatic = true
                v.FireGraphic = "Melinoe_Cast_Fire"
                v.SwapOnFire = "WeaponCastArm"
                v.AddOnFire = "null"
            elseif v.Name = "WeaponCastArm"
                v.ForceMaxChargeRelease = false
                v.CancelChargeOnRelease = false
                v.FireOnRelease = false
                v.AllowExternalForceRelease = true
                v.LoseControlOnRelease = false
                v.ChargeTime = 0.0
                v.MinChargeToFire = 0.0
			end
		end
	end
end