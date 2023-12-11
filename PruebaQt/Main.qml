import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Mi App guapa")

    Rectangle {
        id: primerito
        x: 0
        y: 0
        width: 100
        height: 100
        color: "red"
        border.color: "black"
        border.width: 5
        radius: 10
    }

    Rectangle {
        id: segundito
        anchors.left: primerito.right
        anchors.top: primerito.bottom
        width: 100
        height: 100
        color: "blue"
        border.color: "black"
        border.width: 5
        radius: 10
    }

}
