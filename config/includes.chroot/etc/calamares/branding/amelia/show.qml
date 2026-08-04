import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import calamares.slideshow 1.0

Presentation {
    id: presentation

    function onActivate() {
        slideshow.currentFrame = 0
    }

    Timer {
        interval: 10000
        running: true
        repeat: true
        onTriggered: {
            slideshow.currentFrame = (slideshow.currentFrame + 1) % slideshow.count
        }
    }

    Item {
        anchors.fill: parent

        Rectangle {
            anchors.fill: parent
            color: "#fffbff"
        }

        SwipeView {
            id: slideshow
            anchors.fill: parent
            interactive: true
            currentIndex: 0

            // Slide 1: Welcome to Amelia
            Item {
                anchors.fill: parent

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 24
                    spacing: 16

                    Image {
                        source: "slide.png"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        fillMode: Image.PreserveAspectFit
                        horizontalAlignment: Image.AlignHCenter
                        verticalAlignment: Image.AlignVCenter
                    }

                    Label {
                        text: "Chào mừng đến với hệ điều hành Amelia"
                        font.pixelSize: 20
                        font.bold: true
                        color: "#6650a4"
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Label {
                        text: "Môi trường làm việc hiện đại, tối giản và mượt mà trên nền tảng Debian Testing."
                        font.pixelSize: 13
                        color: "#49454e"
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }

            // Slide 2: Minimal GNOME Experience
            Item {
                anchors.fill: parent

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 24
                    spacing: 16

                    Image {
                        source: "slide.png"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        fillMode: Image.PreserveAspectFit
                        horizontalAlignment: Image.AlignHCenter
                        verticalAlignment: Image.AlignVCenter
                    }

                    Label {
                        text: "Môi trường GNOME tối giản & Flatpak"
                        font.pixelSize: 20
                        font.bold: true
                        color: "#6650a4"
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Label {
                        text: "Hệ thống tinh gọn, không bloatware, sẵn sàng cài đặt ứng dụng phong phú qua Flatpak."
                        font.pixelSize: 13
                        color: "#49454e"
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }
        }

        PageIndicator {
            id: indicator
            count: slideshow.count
            currentIndex: slideshow.currentIndex
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 12

            delegate: Rectangle {
                implicitWidth: 8
                implicitHeight: 8
                radius: 4
                color: index === indicator.currentIndex ? "#6650a4" : "#cac4cf"
            }
        }
    }
}
