#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "plateau.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    Plateau lePlateau;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("vueObjetCpt", &lePlateau);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
