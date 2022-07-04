import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    width: 640
    height: 480
    visible: true
    title: "Hello World"

    function getRandomColor()
    {
        var color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
        return color
    }


    Column
    {
        width: parent.width


        Rectangle
        {
            id: rect
            property int side_size: 100
            color: "red"
            width: side_size
            height: side_size

            MouseArea
            {
                id: mouse_area
                width: parent.width
                height: parent.height

                MouseArea
                {
                    anchors.fill: parent
                    acceptedButtons: Qt.RightButton
                    onClicked:
                    {
                        anim.running = true
                    }
                }


                onClicked:
                {
                    parent.color = getRandomColor()
                }

                onDoubleClicked:
                {
                    parent.radius = parent.side_size
                }


            }

            PropertyAnimation
            {
                id: anim
                target: rect
                property: "rotation"
                from: 0
                to: 360
                duration: 500
                running: false
            }


        }

    }
}
