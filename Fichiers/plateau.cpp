#include "plateau.h"

Plateau::Plateau(QObject *parent) : QObject(parent)
{
    fPlateau=10;
    visible = false;
    cptChanged();
}

QString Plateau::readPlateau()
{
    return QString::number(fPlateau);
}

bool Plateau::readPlateau2()
{
    return visible;
}

void Plateau::increment() {
    fPlateau++;
    visible = false;
    emit cptChanged();
}

void Plateau::decrement() {
    if (fPlateau>-1) {
        fPlateau--;
        visible = true;
        emit cptChanged();
    }
}
