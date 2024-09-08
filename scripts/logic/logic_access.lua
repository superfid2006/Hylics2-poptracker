
function party_1()
    return (has("Pongorma")) or
           (has("Dedusmuln")) or
           (has("Somsnosa"))
end

function party_2()
    return (
            has("Pongorma") and has("Dedusmuln")
           ) 
           or
           (
            has("Pongorma") and has("Somsnosa")
           ) or
           (
            has("Dedusmuln") and has("Somsnosa")
           )
end

function party_3()
    return  (has("Pongorma") and has("Dedusmuln") and has("Somsnosa"))
end

function enter_wormpod()
    return has("DOCKKEY") and has("WORMROOMKEY") and has("paddle")
end

function enter_sageship()
    if has("shuffle_party_members") and has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP") and has("WORMROOMKEY") and party_3() and has("SKULLBOMB") and has("DOCKKEY") and has("paddle")
    elseif has("shuffle_party_members")
        then return party_3() and has("SKULLBOMB") and has("DOCKKEY") and has("paddle")
    elseif has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP") and has("WORMROOMKEY") and has("SKULLBOMB") and has("DOCKKEY") and has("paddle")
    else return has("SKULLBOMB") and has("DOCKKEY") and has("paddle")
    end
end

function enter_foglast()
    if has("shuffle_party_members") and has("extra_items_in_logic")
        then return has("CHARGEUP") and 
            (
                (enter_wormpod() and party_3()) or
                (enter_wormpod() and party_2() and has("JAILKEY"))
            )
    elseif has("shuffle_party_members")
        then return (enter_wormpod() and party_3()) or
            (enter_wormpod() and party_2() and has("JAILKEY"))
    elseif has("extra_items_in_logic")
        then return has("CHARGEUP") and enter_wormpod()
    else return enter_wormpod()
    end
end

function enter_hylemxylem()
    if has("shuffle_party_members") and has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP") and party_3() and has("PNEUMATOPHORE") and has("BRIDGEKEY") and enter_foglast()
    elseif has("shuffle_party_members")
        then return party_3() and has("PNEUMATOPHORE") and has("BRIDGEKEY") and enter_foglast()
    elseif has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP") and has("PNEUMATOPHORE") and has("BRIDGEKEY") and enter_foglast()
    else return has("PNEUMATOPHORE") and has("BRIDGEKEY") and enter_foglast()
    end
end

function rescued_blerol()
  if has("shuffle_party_members")
  then return (party_2() and has("JAILKEY") and has("PADDLE") and has("PNEUMATOPHORE")) or
              (party_2() and has("JAILKEY") and has("PADDLE") and has("DOCKKEY")) or
              enter_hylemxylem()
  else return (has("JAILKEY") and has("PADDLE") and has("PNEUMATOPHORE")) or
              (has("JAILKEY") and has("PADDLE") and has("DOCKKEY")) or
              enter_hylemxylem()
  end
end

function enter_arcade_island()
    if has("shuffle_party_members")
    then return party_3() and has("PNEUMATOPHORE") and has("DOCKKEY")
    else return has("PNEUMATOPHORE") and has("DOCKKEY")
    end
  end

function defeat_viewax()
    if has("shuffle_party_members")
    then return party_2() and has("PADDLE")
    else return has("PADDLE")
    end
  end

function motor_hunter()
    if has("shuffle_party_members") and has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP") and party_3()
    elseif has("shuffle_party_members")
        then return party_3()
    elseif has("extra_items_in_logic")
        then return has("CHARGEUP") and has("PAPERCUP")
    else return true
    end
end

function talk_to_somsnosa()
    if has("shuffle_party_members")
        then return party_3() and has("WORMROOMKEY") and has("DOCKKEY")
    else return has("WORMROOMKEY") and has("DOCKKEY")
    end
end

function juice_ranch_battle()
    if has("shuffle_party_members")
         then return party_2()
    else return true
    end
end
