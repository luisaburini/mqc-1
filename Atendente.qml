import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Item {
    width: Screen.width
    height: Screen.height

    Rectangle{
        anchors.fill: parent
        color: "#f3736a"
        GridLayout{
            rows: 2
            columns: 2
            TextEdit{
                id: textEditProcura
                width: rectSideBar.width
                height: text.height + 10
                focus: true
                font.family: coolvetica.name
                font.pixelSize: 15
                Rectangle{
                    color: "#7ac5b1"
                    anchors.bottom: parent.bottom
                    height: 3
                    width: parent.width
                }
                Image {
                    id: lupa
                    source: "/images/lupa.png"
                    width: textEditProcura.height - 3
                    height: textEditProcura.height - 3
                    anchors.right: textEditProcura.right
                    anchors.verticalCenter: textEditProcura.verticalCenter
                }
            }

            Rectangle{
                id: rectSideBar
                radius: 50
                color: "white"
                height: Screen.height/1.15
                width: Screen.width/8
            }
            Repeater{


            }

        }
    }

}
