#include "plateau.h"

int Plateau::findElement(vector<int> &liste,int element) {
    int result = 0;
    for (int i=0; i<liste.size();++i){
        if (liste[i] == element){
            result = i;
        }
    }
    return result;
}


Plateau::Plateau(QObject *parent) : QObject(parent)
{
    int i;
    fPlateau=10;
    position.push_back(12);
    position.push_back(104);
    position.push_back(196);
    position.push_back(288);
    for (i=1;i<=16;i++){
        visible.append(false);
        x.append(0);
        y.append(0);
        disponible.push_back(i);
    }
    for (int i = 0; i < 4; i++)
        for (int j = 0; j < 4; j++)
          t[i][j] = 0;
    srand(time(NULL));
    /*x[0] = 12;
    y[0] = 12;
    x[1] = 104;
    y[1] = 12;
    x[2] = 196;
    y[2] = 12;
    x[3] = 288;
    y[3] = 12;
    x[4] = 12;
    y[4] = 104;
    x[5] = 104;
    y[5] = 104;
    x[6] = 196;
    y[6] = 104;
    x[7] = 288;
    y[7] = 104;*/
    visible[0]=true;
    int rand1 = rand()%4;
    int rand2 = rand()%4;
    x[0] = position[rand1];
    y[0] = position[rand2];
    cout << rand1 << " "<<rand2;
    cout << endl;
    disponible.erase(disponible.begin() + findElement(disponible,rand2*4+1+rand1));
    t[rand1][rand2] = 1;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j){
         cout << t[i][j] << " ";
         }
        cout << endl;
      }
    for (int i = 0; i < 15; ++i) {
         cout << disponible[i] << " ";
      }
    cout << endl;
    cptChanged();
}


QString Plateau::readPlateau()
{
    return QString::number(fPlateau);
}

QVector<bool> Plateau::readVisible()
{
    return visible;
}

QVector<int> Plateau::readAbs()
{
    return x;
}

QVector<int> Plateau::readOrd()
{
    return y;
}

void Plateau::haut() {
    for (int n=0;n<3;++n){
        for (int j=0; j<3;++j){
            for (int i=0;i<4;++i){
                if (t[i][j]==0 and t[i][j+1]!=0){
                    cout << "ok";
                    cout<< endl;
                    t[i][j]=t[i][j+1];
                    t[i][j+1]=0;
                    disponible.push_back((j+1)*4+i+1);
                    disponible.erase(disponible.begin() + findElement(disponible,(j)*4+1+i));
                    x[t[i][j]-1]=position[i];
                    y[t[i][j]-1]=position[j];
                }
            }
        }
    }

    int randi = rand()%(disponible.size());
    int randx = disponible[randi]-1;
    int rand1 = randx%4;
    int rand2 = (randx)/4;
    disponible.erase(disponible.begin() + findElement(disponible,randx+1));
    int i = 0;
    while (visible[i] == true) {
        i = i + 1;
    }
    x[i] = position[rand1];
    y[i] = position[rand2];
    visible[i]=true;
    cptChanged();
    cout<<randx<<endl;
    t[rand1][rand2] = i+1;
    /*for (int i1 = 0; i1 < 4; ++i1) {
        for (int j1 = 0; j1 < 4; ++j1){
         cout << t[i1][j1] << " ";
         }
        cout << endl;
      }*/
    for (int m = 0; m < disponible.size(); ++m) {
         cout << disponible[m] << " ";
      }
    cout<<endl;
}

void Plateau::bas() {
    for (int n=0;n<3;++n){
        for (int j=3; j>0;--j){
            for (int i=0;i<4;++i){
                if (t[i][j]==0 and t[i][j-1]!=0){
                    t[i][j]=t[i][j-1];
                    t[i][j-1]=0;
                    disponible.push_back((j-1)*4+i+1);
                    disponible.erase(disponible.begin() + findElement(disponible,(j)*4+1+i));
                    x[t[i][j]-1]=position[i];
                    y[t[i][j]-1]=position[j];
                }
            }
        }
    }

    int randi = rand()%(disponible.size());
    int randx = disponible[randi]-1;
    int rand1 = randx%4;
    int rand2 = (randx)/4;
    disponible.erase(disponible.begin() + findElement(disponible,randx+1));
    int i = 0;
    while (visible[i] == true) {
        i = i + 1;
    }
    x[i] = position[rand1];
    y[i] = position[rand2];
    visible[i]=true;
    cptChanged();
    cout<<randx<<endl;
    t[rand1][rand2] = i+1;
    /*for (int i1 = 0; i1 < 4; ++i1) {
        for (int j1 = 0; j1 < 4; ++j1){
         cout << t[i1][j1] << " ";
         }
        cout << endl;
      }*/
    for (int m = 0; m < disponible.size(); ++m) {
         cout << disponible[m] << " ";
      }
    cout<<endl;
}

void Plateau::droite() {
    for (int n=0;n<3;++n){
        for (int i=3; i>0;--i){
            for (int j=0;j<4;++j){
                if (t[i][j]==0 and t[i-1][j]!=0){
                    t[i][j]=t[i-1][j];
                    t[i-1][j]=0;
                    disponible.push_back((j)*4+i);
                    disponible.erase(disponible.begin() + findElement(disponible,(j)*4+1+i));
                    x[t[i][j]-1]=position[i];
                    y[t[i][j]-1]=position[j];
                }
            }
        }
    }

    int randi = rand()%(disponible.size());
    int randx = disponible[randi]-1;
    int rand1 = randx%4;
    int rand2 = (randx)/4;
    disponible.erase(disponible.begin() + findElement(disponible,randx+1));
    int i = 0;
    while (visible[i] == true) {
        i = i + 1;
    }
    x[i] = position[rand1];
    y[i] = position[rand2];
    visible[i]=true;
    cptChanged();
    cout<<randx<<endl;
    t[rand1][rand2] = i+1;
    /*for (int i1 = 0; i1 < 4; ++i1) {
        for (int j1 = 0; j1 < 4; ++j1){
         cout << t[i1][j1] << " ";
         }
        cout << endl;
      }*/
    for (int m = 0; m < disponible.size(); ++m) {
         cout << disponible[m] << " ";
      }
    cout<<endl;
}

void Plateau::gauche() {
    for (int n=0;n<3;++n){
        for (int i=0; i<3;++i){
            for (int j=0;j<4;++j){
                if (t[i][j]==0 and t[i+1][j]!=0){
                    cout << "ok";
                    cout<< endl;
                    t[i][j]=t[i+1][j];
                    t[i+1][j]=0;
                    disponible.push_back((j)*4+i+2);
                    disponible.erase(disponible.begin() + findElement(disponible,(j)*4+1+i));
                    x[t[i][j]-1]=position[i];
                    y[t[i][j]-1]=position[j];
                }
            }
        }
    }

    int randi = rand()%(disponible.size());
    int randx = disponible[randi]-1;
    int rand1 = randx%4;
    int rand2 = (randx)/4;
    disponible.erase(disponible.begin() + findElement(disponible,randx+1));
    int i = 0;
    while (visible[i] == true) {
        i = i + 1;
    }
    x[i] = position[rand1];
    y[i] = position[rand2];
    visible[i]=true;
    cptChanged();
    cout<<randx<<endl;
    t[rand1][rand2] = i+1;
    /*for (int i1 = 0; i1 < 4; ++i1) {
        for (int j1 = 0; j1 < 4; ++j1){
         cout << t[i1][j1] << " ";
         }
        cout << endl;
      }*/
    for (int m = 0; m < disponible.size(); ++m) {
         cout << disponible[m] << " ";
      }
    cout<<endl;
}
