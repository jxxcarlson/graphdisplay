module GraphDemo exposing (..)

import DisplayGraph exposing (Graph, Vertex, graphDisplay)
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (..)
import Svg exposing (svg)


main : Html msg
main =
    div [] [ display ]


display : Html msg
display =
    div [ mainStyle ]
        [ svg
            [ width 200, height 200 ]
            (graphDisplay 100 testGraph)
        , p [ legendStyle ] [ text "Graph" ]
        ]


testGraph : Graph
testGraph =
    Graph vertices edges


vertices : List Vertex
vertices =
    [ Vertex 1 "A", Vertex 2 "B", Vertex 3 "C", Vertex 4 "D", Vertex 5 "E" ]


edges : List ( number, number1 )
edges =
    [ ( 1, 2 ), ( 1, 3 ), ( 2, 3 ), ( 2, 4 ), ( 2, 5 ), ( 3, 4 ), ( 4, 5 ) ]


mainStyle : Html.Attribute msg
mainStyle =
    style
        [ ( "padding", "40px" )
        , ( "width", "220px" )
        , ( "height", "220px" )
        , ( "background-color", "#ddd" )
        ]


legendStyle : Html.Attribute msg
legendStyle =
    style
        [ ( "margin-left", "75px" )
        ]
