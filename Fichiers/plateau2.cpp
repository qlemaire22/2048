#include "plateau2.h"

Plateau::Plateau(QObject *parent) : QObject(parent)
{
    fPlateau=10;
    cptChanged();
}

QString Plateau::readPlateau()
{
    return QString::number(fPlateau);
}

void Plateau::increment() {
    fPlateau++;
    emit cptChanged();
}

void Plateau::decrement() {
    if (fPlateau>-1) {
        fPlateau--;
        emit cptChanged();
    }
}
