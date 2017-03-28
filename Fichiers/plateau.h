#ifndef PLATEAU_H
#define PLATEAU_H

#include <iostream>
#include <vector>
#include <QObject>
#include <QVector>
#include <cstdlib>
#include <time.h>

using namespace std;

class Plateau : public QObject
{
    Q_OBJECT
public:
    explicit Plateau(QObject *parent = 0);
    Q_INVOKABLE void haut();
    Q_INVOKABLE void bas();
    Q_INVOKABLE void droite();
    Q_INVOKABLE void gauche();

    Q_PROPERTY(QString cptQML READ readPlateau NOTIFY cptChanged);
    Q_PROPERTY(QVector<bool> visi READ readVisible NOTIFY cptChanged);
    Q_PROPERTY(QVector<int> abs READ readAbs NOTIFY cptChanged);
    Q_PROPERTY(QVector<int> ord READ readOrd NOTIFY cptChanged);
    Q_PROPERTY(QVector<QString> color READ readColor NOTIFY cptChanged);
    Q_PROPERTY(QVector<QString> chiffre READ readChiffre NOTIFY cptChanged);

    QString readPlateau();
    QVector<bool> readVisible();
    QVector<int> readAbs();
    QVector<int> readOrd();
    QVector<QString> readColor();
    QVector<QString> readChiffre();
    int findElement(vector<int> &liste,int element);

signals:
    void cptChanged();

public slots:

private:
    QVector<bool> visible;
    vector<int> position;
    QVector<QString> couleurs;
    QVector<QString> chiffres;
    vector<string> listeCouleurs;
    int t[4][4];
    vector<int> disponible;
    QVector<int> x;
    QVector<int> y;
    int fPlateau;
};

#endif // PLATEAU_H
