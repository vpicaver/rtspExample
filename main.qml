import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtMultimedia 5.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Video Player")

    ColumnLayout {
        anchors.fill: parent

        TextField {
            Layout.fillWidth: true
            placeholderText: "URL. Example: rtsp://user:password@address"
            onEditingFinished: {
                console.log("Finished!")
                videoId.source = text
                videoId.play()
            }
        }

        Video {
            id: videoId
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
