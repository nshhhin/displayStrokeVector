
// いろんな関数

void displayStrokes(ArrayList<Stroke> g_listStrokes){
  for( Stroke st: g_listStrokes ){
    strokeWeight(8);
    stroke(0);
    st.display();
  }
}

void redrawCount() {
  pushStyle();
  noStroke();
  fill(255);
  textSize(20);
  // なぜかこれ描画するだけでカクツクのでコメントアウト
  // しょうがないのであとでカウントは後処理で付与してあげる
  rect(0,0,25,25);
  fill(0);
  text(count,5,20);
  popStyle();
}

void arrowPos2(Point A, Point B, float w, float h, float h2){
  float Vx = B.x - A.x;
  float Vy = B.y - A.y;
  float v = sqrt(Vx*Vx+Vy*Vy);
  float Ux = Vx/v;
  float Uy = Vy/v;
  Point L = new Point ( B.x - Uy*w - Ux*h, B.y + Ux*w - Uy*h );
  Point R = new Point ( B.x + Uy*w - Ux*h, B.y - Ux*w - Uy*h );
  Point M = new Point( B.x - Ux*h2, B.y - Uy*h2 );
  
  quad(B.x, B.y, L.x, L.y, M.x, M.y, R.x, R.y);
  // -->
}


