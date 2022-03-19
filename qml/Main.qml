import Felgo 3.0
import QtQuick 2.0

App {
    NavigationStack{
       id: head
        Page{
            id:home
            title: qsTr("MY ACCOUNT")

            AppText {
                id: appText1
                x: 43
                y: 45
                width: 158
                height: 41
                text: qsTr("BALANCE =")
            }
            AppText {
                id: appText2
                x: 150
                y: 45
                width: 158
                height: 41
                text: qsTr("0")

                Connections{
                target:creditcode
                onValueChanged: appText2.text = s;

                }
            }

            AppButton {
                id: button1
                anchors.centerIn: parent
               anchors.horizontalCenter: parent.horizontalCenter
               text: qsTr("CREDIT_ACCOUNT")
               anchors.verticalCenterOffset: -102
               anchors.horizontalCenterOffset: 0

               onClicked: {
                 home.navigationStack.push(Qt.resolvedUrl(qsTr("Credit.qml")))
               }
             }
            AppButton {
                id: button2
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
               anchors.top: button1.bottom
               text: qsTr("MAKE_YOUR_ORDER")
               anchors.horizontalCenterOffset: 0
               anchors.topMargin: 27

               //onClicked: {
                 //home.navigationStack.push(Qt.resolvedUrl(qsTr("")))
               //}
             }
            AppButton {
                id: button3
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
               anchors.top: button2.bottom
               text: qsTr("VIEW_TRANSACTION_REPORT")
               anchors.horizontalCenterOffset: 0
               anchors.topMargin: 31

               //onClicked: {
               //home.navigationStack.push(Qt.resolvedUrl(qsTr("")))
               //}
            }

            AppButton {
                id: button4
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
               anchors.top: button2.bottom
               text: qsTr("test")
               anchors.horizontalCenterOffset: 0
               anchors.topMargin: 100

               onClicked: creditcode.print(1)
               Connections{
               target:creditcode
               onPrint: appText2.text=z;
               }
            }
        }
    }
}

