module main;

import std.stdio;
//import std.math;
import std.math;
import std.algorithm;
import std.conv;

import tools.conv;

static void trace(T...)(T args)
{
 writeln!T(args);
 stdout.flush();
}



class Figure
{
    private int _color;
    @property int color() { return _color; }
    private int _area;
    @property int area() { return 0; }

    override string toString() { return "Figure"; }

}
class Circle : Figure
{
        @property int radius() { return 10; }
        //@property int area() { return 0; }
}

class Rectangle : Figure
{
    @property int corners() { return 4; }
    //@property int area() { return 0; }
}

class Square : Rectangle
{

}
enum Sex { Man, Woman };
class Human
{
    Sex _sex;
 @property int legs() { return 2; }
 override string toString() { return "Human"; }
 @property bool sex() { return cast(bool)_sex; }
}
class Monster : Human
{
 //@property int legs() {  }
}
class Man : Human
{
 override string toString() { return "Man"; }
 override @property bool sex() { return true; }
}
class Women : Human {    override string toString() { return "Women"; }
                         override @property bool sex() { return false; }

}

interface Invalid
{
 @property bool hasOneLeg();
}

class InvalidMan : Man, Invalid
{
 @property override int legs() { return 1; }
@property bool hasOneLeg() {return true;}
}
class InvalidWomen : Women, Invalid
{
 @property override int legs() { return 1; }
 @property bool hasOneLeg(){return true;}
}

void main(string[] args)
{
 Human[3] arr = [ new Human(), new Monster(), new InvalidMan() ];
 int legs = 0;
 foreach(m; arr)
  {
     //legs += m.legs;
 //    trace(m, cast(Invalid)m !is null ? " - invalid" : null);
  }
 trace("XXXРусскийQQQ");

 writeln(01237774567);

}
