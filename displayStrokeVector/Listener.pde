
// イベント処理

void mousePressed() {
  gifMaker = new GifMaker(this, "save/" + fileName + "/0" + count+".gif"); // 'box.gif'という名前でGIFアニメを作成
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
  // Deleteコマンド
  if ( key == 'D' || key == ' '  ) {
    count = 1;
    background(255);
    g_listStrokes = new ArrayList();
    //  redrawCount();
  }
  // Undoコマンド
  else if ( keyCode == LEFT ) {
    background(255);
    if ( g_listStrokes.size() > 0 ) {
      g_listStrokes.remove( g_listStrokes.size()-1 );
      displayStrokes( g_listStrokes );
      count =- 1;
    }
    // お題をタイプされた数字によって切り替えるコマンド
  } else {
    String keyStr = str(key);
    String[] m = match(keyStr, "[0-9]"); 
    if (m != null) {
      // println("t=" + m[0]);       
      fileName = fileNames[int(m[0])];
      println(fileName, "を書いてください");
    } else {
      println("不一致");
    }
  }
}

