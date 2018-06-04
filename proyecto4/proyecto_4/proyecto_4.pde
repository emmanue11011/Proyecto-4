import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

OpenCV opencv;
Capture video;
Rectangle[] faces;
PImage p1,p2,l1,l2,l3,l4,l5,l6,l7,l8,l9;
int con=0, value=0;

void setup()
{
  size (640,480);
  
  opencv = new OpenCV(this, "test.jpg");
  
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
  
  p1 = loadImage ("pantallaUno.jpg");
  p2 = loadImage ("pantallaDos.jpg");
  l1 = loadImage ("lente1.png");
  l2 = loadImage ("lente2.png");
  l3 = loadImage ("lente3.png");
  l4 = loadImage ("lente4.png");
  l5 = loadImage ("lente5.png");
  l6 = loadImage ("lente6.png");
  l7 = loadImage ("lente7.png");
  l8 = loadImage ("lente8.png");
  l9 = loadImage ("lentes.png");
  
  video.start();
}


void draw()
{
  background (#35C7E3);
  scale(2);  
  opencv.loadImage(video);
  image(opencv.getInput(), 0, 0);
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  
  if (con==0)
  {
    //pantalla de bienvenida
    pushMatrix();
    scale (0.5);
    image (p1,0,0,width,height);
    popMatrix();
  
  if (keyPressed==true && key=='m' || key=='M')
  {
    //pantalla de instrucciones
    con=2;
  }
  }
  
  if (con==2)
  {
    pushMatrix();
    scale (0.5);
    image (p2,0,0,width,height);
    popMatrix();
    
    if (keyPressed==true)
    {
    switch (key)
    {
      case 'a':
      value=1;
      break;
      case 'b':
      value=2;
      break;
      case 'c':
      value=3;
      break;
      case 'd':
      value=4;
      break;
      case 'e':
      value=5;
      break;
      case 'f':
      value=6;
      break;
      case 'g':
      value=7;
      break;
      case 'h':
      value=8;
      break;
    }
    
  }
  
     if (value!=0)
    {
      con=4;
    }
    
  }
  
  if (con==4)
  {
    if (value==1)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l1,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
      }
      keyPressed();
    }
    else if (value==2)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l2,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    else if (value==3)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l3,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
  else if (value==4)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l4,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    
    else if (value==5)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l5,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    
    else if (value==6)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l6,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    
    else if (value==7)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l7,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    
    else if (value==8)
    {
      for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image (l8,faces[i].x-15, faces[i].y, faces[i].width*1.2, faces[i].height*0.7);
  }
  keyPressed();
    }
    }
  }


void captureEvent(Capture c) {
  c.read();
}

void keyPressed()
{
  if (key=='z')
  {
    con=2;
    value=0;
  }
}