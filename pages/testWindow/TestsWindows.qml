import QtQuick 2.12
import QtQuick.Window 2.12
import 'qrc:/components/testWindow'


Item{
    id:testsWindows
    property int questionNumber: 1
    property int testNumber: -1
    Rectangle{
        anchors.fill: parent
        color: isDark ? backgroundColor : whiteBackgroundColor
        TopPanel {
            id: topPanel
            anchors.top: parent.top
            width: parent.width
            height: parent.height * 0.08
        }
        MiddlePanel {
            id: middlePanel
            anchors.bottom: bottomPanel.top
            anchors.top: topPanel.bottom
            width: parent.width
            anchors.bottomMargin: parent.height * 0.05
        }
        BottomPanel {
            id: bottomPanel
            anchors.bottom: parent.bottom
            width: parent.width
            height: parent.height * 0.1
        }
    }
}
