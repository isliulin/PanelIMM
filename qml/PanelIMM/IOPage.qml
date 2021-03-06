import QtQuick 1.1
import "."

Rectangle {
    MouseArea{
        anchors.fill: parent
        IOComponent{
            id:left
            y:2
            anchors.left: parent.left
            anchors.leftMargin: 10
            width: parent.width >> 1
            //        anchors.bottom: parent.bottom
            //        anchors.top: parent.top

            //        height: parent.height
        }
        Rectangle{
            id:line
            width: 1
            height: parent.height
            y:left.y
            color: "black"
            anchors.centerIn: parent
        }

        IOComponent{
            id:right
            anchors.left: line.right
            anchors.leftMargin: 10
            width: parent.width >> 1
            y:left.y
            //        height: parent.height
        }
    }
}
