import QtQuick 2.9
import QtQuick.Controls
import QtQuick.Window 2.15

ApplicationWindow {
    id: subscr
    width: 480
    height: 720
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: loader2
        anchors.fill: parent
        source: "reserv.qml"
    }
    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#cceeff" }
        }
    }

    Image {
        id: logo
        height: 150
        width: 150
        source:"file:/Users/79500/Documents/qt_pag/grad.png"
    }
    Row {
    Button {
        text: "Избранное"
        anchors.margins: 30
        font.pixelSize: 24
        width: 150
        background: Rectangle {
            border.color: "#14191D"
            color: "#cceeff"
            border.width: 1
        }
        onClicked: console.log("none")

    }
    Button {
        text: "Главная"
        anchors.margins: 30
        font.pixelSize: 24
        width: 150
        background: Rectangle {
                   border.color: "#14191D"
                   color: "#bbddff"
                   border.width: 1
               }
               onClicked: {
                   loader2.source = "list_window.qml"
                   subsr.hide()
               }
    }
    }
}
