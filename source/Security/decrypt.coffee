cryptico = require "cryptico"
Model = require "../Communication/model"

module.exports = (cipher, next) ->
    result = cryptico.decrypt cipher, Model.state.rsa

    if result.status is "success"
        next result.plaintext
    else
        console.error "Decryption was not a success"