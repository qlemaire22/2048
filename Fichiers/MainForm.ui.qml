import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: page
    width: 480
    height: 640
    property alias text1: text1
    property alias chiffre1: chiffre1
    property alias mouseAreaLeave: mouseAreaLeave
    property alias textleave: textleave
    property alias leavegame: leavegame
    property alias mouseAreaNew: mouseAreaNew
    property alias textnew: textnew
    property alias newgame: newgame
    property alias case16: case16
    property alias case15: case15
    property alias case14: case14
    property alias case13: case13
    property alias case12: case12
    property alias case11: case11
    property alias case10: case10
    property alias case9: case9
    property alias case8: case8
    property alias case7: case7
    property alias case6: case6
    property alias case5: case5
    property alias case4: case4
    property alias case3: case3
    property alias case2: case2
    property alias case1: case1
    property alias plateau: plateau
    property alias textscore: textscore
    property alias titrescore: titrescore
    property alias score: score
    property alias textbest: textbest
    property alias titrebest: titrebest
    property alias best: best
    property alias titre: titre
    property alias fond: fond

    Rectangle {
        id: fond
        color: "#fbf8ef"
        border.color: "#fbf8ef"
        anchors.fill: parent

        Keys.onPressed: {
          switch (event.key) {
            case Qt.Key_Up:
              vueObjetCpt.increment();
              break;
            case Qt.Key_Down:
              vueObjetCpt.decrement();
              break;
          }
        }

        Text {
            id: titre
            color: "#79726a"
            text: qsTr("2048")
            horizontalAlignment: Text.AlignLeft
            font.bold: true
            font.family: "Tahoma"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 50
            font.pixelSize: 50
        }

        Rectangle {
            id: best
            x: 212
            width: 100
            height: 60
            color: "#bbada0"
            radius: 10
            border.color: "#bbada0"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 50
            border.width: 5

            Text {
                id: titrebest
                color: "#ffffff"
                text: qsTr("BEST")
                anchors.horizontalCenterOffset: 0
                font.bold: true
                styleColor: "#ffffff"
                font.family: "Tahoma"
                anchors.top: parent.top
                anchors.topMargin: 8
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 13
            }

            Text {
                id: textbest
                width: 85
                height: 24
                color: "#ffffff"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
                font.bold: false
                anchors.verticalCenterOffset: 10
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 15
                text: vueObjetCpt.cptQML
                focus: true

            }
        }

        Rectangle {
            id: score
            x: 220
            y: 1
            width: 100
            height: 60
            color: "#bbada0"
            radius: 10
            anchors.top: parent.top
            border.width: 5
            anchors.right: best.left
            border.color: "#bbada0"
            anchors.rightMargin: 10
            anchors.topMargin: 50

            Text {
                id: titrescore
                color: "#ffffff"
                text: qsTr("SCORE")
                anchors.top: parent.top
                styleColor: "#ffffff"
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 13
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 8
            }

            Text {
                id: textscore
                x: -7
                y: 0
                width: 85
                height: 24
                color: "#ffffff"
                text: qsTr("0")
                anchors.verticalCenterOffset: 10
                font.bold: false
                font.family: "Tahoma"
                font.pixelSize: 15
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: plateau
            x: 148
            y: 241
            width: 380
            height: 380
            color: "#bbada0"
            radius: 4
            border.color: "#bbada0"
            border.width: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: case1
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                border.color: "#cdc1b5"
                border.width: 5
                anchors.left: parent.left
                anchors.leftMargin: 12
                anchors.top: parent.top
                anchors.topMargin: 12
            }

            Rectangle {
                id: case2
                x: -5
                y: -6
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case1.right
                anchors.top: parent.top
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case3
                y: -4
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case2.right
                anchors.top: parent.top
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case4
                y: -5
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case3.right
                anchors.top: parent.top
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case5
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: parent.left
                anchors.top: case1.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case6
                x: -7
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case5.right
                anchors.top: case2.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case7
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case6.right
                anchors.top: case3.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case8
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case7.right
                anchors.top: case4.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case9
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: parent.left
                anchors.top: case5.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case10
                x: 4
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case9.right
                anchors.top: case6.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case11
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case10.right
                anchors.top: case7.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case12
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case11.right
                anchors.top: case8.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case13
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: parent.left
                anchors.top: case9.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case14
                x: -7
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case13.right
                anchors.top: case10.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case15
                x: -16
                y: 8
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case14.right
                anchors.top: case10.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: case16
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                anchors.left: case15.right
                anchors.top: case11.bottom
                border.width: 5
                anchors.leftMargin: 12
                border.color: "#cdc1b5"
                anchors.topMargin: 12
            }

            Rectangle {
                id: chiffre1
                x: 0
                y: 0
                width: 80
                height: 80
                color: "#ffffff"
                radius: 10
                visible: true
                Text {
                    id: text1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#ffffff"
            }

            Rectangle {
                id: chiffre2
                x: -3
                y: -2
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text2
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre3
                x: 8
                y: -4
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text3
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre4
                x: 0
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text4
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre5
                x: 0
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text5
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre6
                x: -5
                y: -7
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text6
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre7
                x: -7
                y: 2
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text7
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre8
                x: 6
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text8
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre9
                x: -2
                y: 2
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text9
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre10
                x: -8
                y: -1
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text10
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre11
                x: -7
                y: 4
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text11
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre12
                x: 0
                y: -5
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text12
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre13
                x: 6
                y: -4
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text13
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre14
                x: 4
                y: -2
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text14
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre15
                x: 7
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text15
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }

            Rectangle {
                id: chiffre16
                x: 0
                y: 0
                width: 80
                height: 80
                color: "#cdc1b5"
                radius: 10
                visible: vueObjetCpt.cptQML2
                Text {
                    id: text16
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Tahoma"
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
                border.width: 5
                border.color: "#cdc1b5"
            }
        }

        Rectangle {
            id: newgame
            y: -2
            width: 120
            height: 60
            color: "#bbada0"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 50
            Text {
                id: textnew
                color: "#ffffff"
                text: qsTr("NEW GAME")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                styleColor: "#ffffff"
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 13
            }

            MouseArea {
                id: mouseAreaNew
                anchors.fill: parent
            }
            anchors.top: titre.bottom
            border.width: 5
            border.color: "#bbada0"
            anchors.topMargin: 20
        }

        Rectangle {
            id: leavegame
            x: 6
            y: 5
            width: 120
            height: 60
            color: "#bbada0"
            radius: 10
            anchors.right: parent.right
            anchors.rightMargin: 50
            Text {
                id: textleave
                color: "#ffffff"
                text: qsTr("LEAVE")
                styleColor: "#ffffff"
                font.bold: true
                font.family: "Tahoma"
                font.pixelSize: 13
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                id: mouseAreaLeave
                anchors.fill: parent
            }
            anchors.top: titre.bottom
            border.width: 5
            border.color: "#bbada0"
            anchors.topMargin: 20
        }
    }
}
