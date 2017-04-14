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
    Q_INVOKABLE void reinitialise();

    Q_PROPERTY(QString cptQML READ readPlateau NOTIFY cptChanged);
    Q_PROPERTY(QVector<bool> visi READ readVisible NOTIFY cptChanged);
    Q_PROPERTY(QVector<int> abs READ readAbs NOTIFY cptChanged);
    Q_PROPERTY(QVector<int> ord READ readOrd NOTIFY cptChanged);
    Q_PROPERTY(QVector<int> val READ readValeur NOTIFY cptChanged);
    Q_PROPERTY(QString scoree READ readScore NOTIFY cptChanged);
    Q_PROPERTY(QString best READ readBestscore NOTIFY cptChanged);

    QString readPlateau();
    QVector<bool> readVisible();
    QVector<int> readAbs();
    QVector<int> readOrd();
    QVector<int> readValeur();
    int findElement(vector<int> &liste,int element);
    QString readScore();
    QString readBestscore();

signals:
    void cptChanged();

public slots:

private:
    QVector<bool> visible;
    vector<int> position;
    int t[4][4];
    vector<int> disponible;
    QVector<int> x;
    QVector<int> y;
    int fPlateau;
    QVector<int> valeur;
    int score=0;
    int bestscore=0;
};

#endif // PLATEAU_H
