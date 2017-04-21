decrypt = require "../Security/decrypt"
encrypt = require "../Security/encrypt"
Model = require "./model"
Http = require "./http"


module.exports = (dest, body, next) ->
    if Model.state.clientsKey.length is 0
        console.error "We dont have our client key yet"

    if Model.state.serversKey.length is 0
        console.error "We dont have the servers key yet"

    encryption = encrypt body

    if encryption.status is "success"
        body = JSON.stringify cipher: encryption.cipher

        Http.post dest, body, (cipher) ->
            decrypt cipher, (plaintext) ->
                json = JSON.parse plaintext
                next json
    else
        console.error "Encryption was not a success"
