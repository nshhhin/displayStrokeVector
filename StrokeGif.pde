import gifAnimation.*;

GifMaker gifMaker;
boolean PLAY=false;
int count=1;


ArrayList <Point> g_listPoints;
// ↓
Stroke g_Stroke;
// ↓
ArrayList <Stroke> g_listStrokes;

void setup() {
  size(350, 350);
  frameRate(40);  
  background(255);
  strokeWeight(2);

  // init
  g_listPoints = new ArrayList<Point>();
  g_listStrokes = new ArrayList<Stroke>();
}

Stroke stroke;

void draw() {

  if (mousePressed) {
    Point lastPoint = g_listPoints.get(g_listPoints.size()-1);
    Point nowPoint  = new Point(mouseX, mouseY);
    if ( !lastPoint.isEquals( nowPoint ) ) {
      strokeWeight(8);
      stroke(255, 0, 0);
      line(pmouseX, pmouseY, mouseX, mouseY);
      g_listPoints.add( nowPoint );
    }
  }

  if (PLAY) {
    gifMaker.addFrame(); // 現在の画面をアニメーションのコマとして追加
  }
}




