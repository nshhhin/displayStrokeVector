

// Event Listener

void mousePressed() {
  gifMaker = new GifMaker(this, count+".gif"); // 'box.gif'という名前でGIFアニメを作成
  gifMaker.setRepeat(0); // エンドレス再生する
  gifMaker.setDelay(30); // アニメーションの間隔を20ms(=50fps)に設定
  count++;
  PLAY=true;
  //redrawCount();
  g_listPoints = new ArrayList<Point>();
  g_listPoints.add( new Point(mouseX, mouseY) );
}

void mouseReleased() {
  gifMaker.finish();
  PLAY=false;
  g_Stroke = new Stroke( g_listPoints );
  g_listStrokes.add( g_Stroke );
  
  displayStrokes( g_listStrokes );
}

void keyPressed() {
  count = 1;
  background(255);
  redrawCount();
}
