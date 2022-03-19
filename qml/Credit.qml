import QtQuick 2.0
import Felgo 3.0

Page {
    id:page1
    title: "CREDIT ACCOUNT"

    AppTextField {
        id: appTextField
        x: 8
        y: 142
        width: 223
        height: 27
         placeholderText: "Enter amount from 50"
         validator: IntValidator {bottom: 50; top: 1000000000;}
             focus: true
            color: acceptableInput ? "green" : "red"

    }

    AppText {
        id: appText
        x: 242
        y: 149
        text: qsTr("FCFA")
    }

    AppText {
        id: appText1
        x: 43
        y: 45
        width: 158
        height: 41
        text: qsTr("ENTER THE AMOUNT YOU WISH TO ADD")
    }

    AppButton {
        id: confirm
        anchors.centerIn: parent
       anchors.horizontalCenter: parent.horizontalCenter
       text: qsTr("CONFIRM")
       anchors.verticalCenterOffset: -14
       anchors.horizontalCenterOffset: -34


       onClicked: creditcode.increment(appTextField)
    }

}
