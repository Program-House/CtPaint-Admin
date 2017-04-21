port module Ports exposing (..)


port saveServersKey : String -> Cmd message


port makeClientKey : () -> Cmd message


port signIn : ( String, String ) -> Cmd message


port signInResult : (String -> message) -> Sub message


port searchUser : ( String, String ) -> Cmd message


port userSearchResult : (Bool -> message) -> Sub message


port setUsername : String -> Cmd message



--port requestSessionToken : () -> Cmd message
--port getSessionToken : (String -> message) -> Sub message
--port requestPublicKey : () -> Cmd message
--port getPublicKey : (String -> message) -> Sub message
--port encrypt : ( String, String ) -> Cmd message
--port getEncryption : (String -> message) -> Sub message
--port decrypt : String -> Cmd message
--port getPlaintext : (String -> message) -> Sub message
