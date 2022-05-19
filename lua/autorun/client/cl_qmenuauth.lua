local qmenu_ranks = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["owner"] = true,
    ["moderator"] = false,
    ["doubleadmin"] = true,
    ["trialmod"] = true,
    ["headstaff"] = true,
    ["developer"] = true,
    ["headdeveloper"] = true,
    ["headgamemaker"] = true,
    ["builder"] = true,
    ["gamemaker"] = true,
    ["User"] = false,
    ["user"] = false,
    ["{"] = false,
    ["user"] = false,
    ["SGT"] = false
    }
    hook.Add("SpawnMenuOpen", "spawn_menu_ranks", function()
    local ply = LocalPlayer()
    if not IsValid(ply) and qmenu_ranks[ply:GetUserGroup()] then
    return false
    end
    end)