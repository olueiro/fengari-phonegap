local js = require("js")
local global = js.global
local document = global.document

global.app = {
    -- Application Constructor
    initialize = function(self)
        self:bindEvents()
    end,
    -- Bind Event Listeners
    --
    -- Bind any events that are required on startup. Common events are:
    -- 'load', 'deviceready', 'offline', and 'online'.
    bindEvents = function(self)
        document:addEventListener('deviceready', self.onDeviceReady, false)
    end,
    -- deviceready Event Handler
    --
    -- The scope of 'self' is the event. In order to call the 'receivedEvent'
    -- function, we must explicitly call 'global.app:receivedEvent(...);'
    onDeviceReady = function(self)
        global.app:receivedEvent('deviceready')
    end,
    -- Update DOM on a Received Event
    receivedEvent = function(self, id)
        local parentElement = document:getElementById(id)
        local listeningElement = parentElement:querySelector('.listening')
        local receivedElement = parentElement:querySelector('.received')

        listeningElement:setAttribute('style', 'display:none;')
        receivedElement:setAttribute('style', 'display:block;')

        print('Received Event: ' .. id)
    end
}
