import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2


ApplicationWindow {
    visible: true
    width: Screen.width
    height: Screen.height

    FontLoader{
        id: coolvetica
        name: "coolvetica"
        source: "/fonts/coolvetica.ttf"
    }

    Image{
        anchors.fill: parent
        source: "/images/background.png"
        Column{
            anchors.centerIn: parent
            Image {
                id: header
                source: "/images/header.png"
                anchors.horizontalCenter: parent.horizontalCenter
                Text {
                    id: mqcTitulo
                    text: qsTr("Minha Querida Casa")
                    font.family: coolvetica.name
                    font.pixelSize: 40
                    anchors.centerIn: header
                    color: "#b73735"
                }
            }
            Row{
                spacing: 50
                anchors.horizontalCenter: parent.horizontalCenter
                Botao{
                    id: botaoCadastrar
                    texto: "Login"
                    comprimento: background.width/3 - 150
                    raio: 10
                    tamFonte: 35
                    altura: background.height/7
                    cor: "white"
                    corTexto: "#68a897"
                    onClicked: mainScreen.state = "Login"
                }
                Botao{
                    id: botaoJaCadastrado
                    raio: 10
                    texto: "Cadastre-se"
                    comprimento: background.width/3 - 150
                    altura: background.height/7
                    tamFonte: 35
                    cor: "white"
                    corTexto: "#68a897"
                    onClicked: mainScreen.state = "Cadastro"
                }
            }

        }
    }


    Item{
        id: mainScreen
        state: "EstadoInicial"
        states: [
            State {
                name: "Login"
            },
            State{
                name: "Cadastro"
            },
            State{
                name: "Supervisor"
            },
            State{
                name: "Atendente"
            }
        ]
    }

    Cadastro{
        id: cadastro
        anchors.fill: parent
        visible: mainScreen.state == "Cadastro"
    }
    Login{
        id: login
        anchors.fill: parent
        visible: mainScreen.state == "Login"
    }
    Atendente{
        id: atendente
        anchors.fill: parent
        visible: mainScreen.state == "Atendente"
    }
    Supervisor{
        id: supervisor
        anchors.fill: parent
        visible: mainScreen.state == "Supervisor"
    }

}
