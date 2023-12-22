import QtQuick 2.9
import QtQuick.Controls
import QtQuick.Window 2.15

ApplicationWindow {
    id: list_window
    width: 480
    height: 720
    visible: true
    title: qsTr("Hello World")

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#cceeff" }
        }
    }

    Loader {
        id: loader1
        anchors.fill: parent
        source: "reserv.qml"
    }

    Image {
        id: logo
        height: 150
        width: 150
        source:"file:/Users/79500/Documents/qt_pag/logo.png"
    }

    Row {
    Button {
        text: "Избранное"
        anchors.margins: 30
        font.pixelSize: 24
        width: 150
        background: Rectangle {
            border.color: "#14191D"
            color: "#bbddff"
            border.width: 1
        }
        onClicked: {
            loader1.source = "subsr.qml"
            list_window.hide()
        }
    }
    Button {
        text: "Главная"
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
    }
}
