import QtQuick 2.0

Rectangle {
    width: 700
    height: 700

    Image {
        id: ring
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        z: 1
        source: "images/ring.png"

        function rotate() {
            var date = new Date;
            ring.rotation = (date.getUTCHours() * 15) + (date.getUTCMinutes() * 0.25) % 360;
        }

        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: ring.rotate()
        }
    }

    Image {
        id: ticks
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        z: 0
        source: "images/background.png"
    }

}

