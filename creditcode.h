#ifndef CREDITCODE_H
#define CREDITCODE_H

#include <QObject>
#include <QString>

class Creditcode : public QObject
{
     Q_OBJECT
public:
    explicit Creditcode(QObject *parent = nullptr);
    ~Creditcode();


signals:
    void valueChanged(int s);

    //test functions
    void print(QString y);

public slots:
    void increment(int x);
    void valueincrement(int s);

    //test functions
    void print1(int z);


};

#endif // CREDITCODE_H
