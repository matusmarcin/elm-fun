import Html exposing (div, button, text)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)


main =
  beginnerProgram { model = "Meh.", view = view, update = update }


view model =
  div []
    [ div [] [ text (toString model) ]
    , button [ onClick SayHi ] [ text "Hi!" ]
    , button [ onClick SayBye ] [ text "Bye." ]
    ]


type Msg = SayHi | SayBye


update msg model =
  case msg of
    SayHi ->
      "Hello World!"

    SayBye ->
      "Goodbye World."
