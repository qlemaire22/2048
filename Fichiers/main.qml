import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 480
    height: 640
    title: qsTr("2048")

    MainForm {
        anchors.fill: parent
        id: page
        mouseAreaLeave {
            onClicked: Qt.quit();
        }
    }
    StateGroup{
        id: stateGroup1
        states:[
            State{
                name: "State1"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case1
                    y: page.plateau.case1
                }
            },
            State{
                name: "State2"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case2
                    y: page.plateau.case2
                }
            },
            State{
                name: "State3"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case3
                    y: page.plateau.case3
                }
            },
            State{
                name: "State4"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case4
                    y: page.plateau.case4
                }
            },
            State{
                name: "State5"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case5
                    y: page.plateau.case5
                }
            },
            State{
                name: "State6"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case6
                    y: page.plateau.case6
                }
            },
            State{
                name: "State7"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case7
                    y: page.plateau.case7
                }
            },
            State{
                name: "State8"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case8
                    y: page.plateau.case8
                }
            },
            State{
                name: "State9"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case9
                    y: page.plateau.case9
                }
            },
            State{
                name: "State10"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case10
                    y: page.plateau.case10
                }
            },
            State{
                name: "State11"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case11
                    y: page.plateau.case11
                }
            },
            State{
                name: "State12"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case12
                    y: page.plateau.case12
                }
            },
            State{
                name: "State13"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case13
                    y: page.plateau.case13
                }
            },
            State{
                name: "State14"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case14
                    y: page.plateau.case14
                }
            },
            State{
                name: "State15"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case15
                    y: page.plateau.case15
                }
            },
            State{
                name: "State16"

                PropertyChanges {
                    target: page.plateau.chiffre1
                    x: page.plateau.case16
                    y: page.plateau.case16
                }
            }
        ]
    }
}
