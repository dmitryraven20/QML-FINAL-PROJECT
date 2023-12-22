import QtQuick 2.9
import QtQuick.Controls
import QtQuick.Window 2.15

ApplicationWindow {
    id: list_window
    width: 480
    height: 360
    visible: true
    title: qsTr("Hello World")

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#bbfff9" }
        }
    }

    Text {
        text: "Hello"
    }
}
