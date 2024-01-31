local displayed = true

function SendNUIMessageWithOptions(type, job, text, isClosing)
    if displayed then
        local displayed = false
        local jobConfig = Config.Jobs[job]

        if Config.Debug then
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. jobConfig.name)
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. jobConfig.image)
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. jobConfig.titlecolor)
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. text)
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. jobConfig.textcolor)
            print("[M-JobNotifycatiosnV2] [DEBUG] " .. jobConfig.icon)
        end


        SendNUIMessage({
            type = type,
            jobname = jobConfig.name,
            image = jobConfig.image,
            titlecolor = jobConfig.titlecolor,
            texto = text,
            textcolor = jobConfig.textcolor,
            icon = jobConfig.icon,
            footertext = Config.FooterText,

            backgroundcolor = Config.Ui.backgroundcolor,
            boxshadow = Config.Ui.boxshadow,
            borderradius = Config.Ui.borderradius,
            opacity = Config.Ui.opacity,
            top = Config.Ui.top,
            left = Config.Ui.left,

            borderradiusimg = Config.Ui.borderradiusimg,
            titlefontsize = Config.Ui.fontsize,
            titlefontweight = Config.Ui.fontweight,
            titlefilter = Config.Ui.filter,
        })

        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(0)
                if not displayed and IsControlJustPressed(0, 38) then -- 38 es el valor de la tecla 'E'
                    local coords = jobConfig.coords
                    if Config.Debug then
                        print("[M-JobNotifycatiosnV2] [DEBUG] coordenadas marcadas: " .. coords.x .. " " .. coords.y)
                    end

                    SetNewWaypoint(coords.x, coords.y)

                    local notificationText = "Coordenadas marcadas hacia: " .. jobConfig.name
                    if isClosing then
                        notificationText = "Negocio cerrado: " .. jobConfig.name
                    end

                    if Config.notificationScript == "QBCore" then
                        local QBCore = exports['qb-core']:GetCoreObject()
                        QBCore.Functions.Notify(notificationText)
                    elseif Config.notificationScript == "ox" then
                        lib.notify({
                            title = 'GPS',
                            description = notificationText,
                            type = 'inform'
                        })
                    end

                    return
                end
            end
        end)
    end

    displayed = true
end

function OpenBusiness(job)
    SendNUIMessageWithOptions('abrirnegocio', job, Config.Jobs[job].openbusinesstext)
end

function CloseBusiness(job)
    SendNUIMessageWithOptions('abrirnegocio', job, Config.Jobs[job].closebusinesstext, true)
end

function CustomTextBusiness(text, job)
    SendNUIMessageWithOptions('customtext', job, text)
end

RegisterNetEvent('m:jobnotifyv2:abrirbusiness')
AddEventHandler('m:jobnotifyv2:abrirbusiness', OpenBusiness)

RegisterNetEvent('m:jobnotifyv2:closebusiness')
AddEventHandler('m:jobnotifyv2:closebusiness', CloseBusiness)

RegisterNetEvent('m:jobnotifyv2:customtextbusiness')
AddEventHandler('m:jobnotifyv2:customtextbusiness', CustomTextBusiness)



