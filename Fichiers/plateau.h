#ifndef PLATEAU_H
#define PLATEAU_H

#include <QObject>

class Plateau : public QObject
{
    Q_OBJECT
public:
    explicit Plateau(QObject *parent = 0);
    Q_INVOKABLE void increment();
    Q_INVOKABLE void decrement();

    Q_PROPERTY(QString cptQML READ readPlateau NOTIFY cptChanged);
    Q_PROPERTY(bool cptQML2 READ readPlateau2 NOTIFY cptChanged);

    QString readPlateau();
    bool readPlateau2();

signals:
    void cptChanged();

public slots:

private:
    int fPlateau;
    bool visible;
};

#endif // PLATEAU_H
