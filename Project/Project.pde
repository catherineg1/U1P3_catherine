import ddf.minim.*;

Minim minim;
AudioPlayer allStar;

float x= 400;
float y= 400;
float speed= 15;

float LordFarquaadX= 400;
float LordFarquaadY= 0;

int Screen = 2;

PImage shrek;
float shrekX = 300;
float shrekY = 400;

PImage lf;
float lfX= 400;
float lfY= 0;

PImage ShrekBG;
float ShrekBGX= 800;
float ShrekBGY= 800;

PImage duloc;
float dulocX = 800;
float dulocY= 800;

PImage swamp;
float swampX= 800;
float swampY= 800;

PImage donkey;
float donkeyX= 400;
float donkeyY= 400;

void setup()
{
  size(800,800);
  minim = new Minim(this);
  allStar = minim.loadFile("allStar.mp3");
  allStar.play(3000);

donkey= loadImage("donkey.jpg");
swamp = loadImage("swamp.jpg");
swamp.resize(800,800);
  duloc= loadImage("duloc.jpg");
 duloc.resize(800,800);
  shrek = loadImage("Shrek.png");
  shrek.resize(200,300);
  lf= loadImage("Lordfarquadd.jpg");
  ShrekBG= loadImage("ShrekBG.jpg");
 ShrekBG.resize(800,800);
  }
  
void draw()
{
  
  background(ShrekBG);
  image(shrek, x, y);
  image(lf, lfX, lfY);
  lf.resize(100,100);
  lfY= lfY + 6;
  
  if(Screen == 1)
  {
    background(ShrekBG);
  image(shrek, x, y);
  image(lf, lfX, lfY);
  lf.resize(100,100);
  }
  
  
  if(lfY>800)
  {
    lfY = 0; 
    lfX = random(0, 800);
  }
  
  if(Screen == 3)
  {
    background(duloc);
    image(shrek, x, y);
    image(lf, lfX, lfY);
    lfY= lfY + 2;
  }
  
  if(Screen == 4)
  {
    background(swamp);
    
    image(lf, lfX, lfY);
  lfY= lfY + 2;
  image(donkey, x + 20, y +20);
  donkey.resize(100,300);
  }
  
  for(int i = 0; i < allStar.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, allStar.bufferSize(), 0, width );
    float x2 = map( i+1, 0, allStar.bufferSize(), 0, width );
    line( x1, 50 + allStar.left.get(i)*50, x2, 50 + allStar.left.get(i+1)*50 );
    line( x1, 150 + allStar.right.get(i)*50, x2, 150 + allStar.right.get(i+1)*50 );
  }
  
}

void keyPressed()
{
  if(key == 'd')
  {
    x = x + speed;
  }
  
  if(key == 'a')
  {
    x = x - speed;
  }
  
 if(key == 's')
{
  y = y + speed;
}

if(key == 'w')
{
  y = y - speed;
}
 
  if(key== '3')
  {
   Screen = 3;
  }
  
if(key == '4')
{
 Screen = 4;
}
  
  if(key == '1')
  {
    Screen= 1;
  }
  
 
}
