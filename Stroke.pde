
class Stroke {
  ArrayList <Point>m_listPoints = new ArrayList();

  Stroke() {
  }

  Stroke( ArrayList <Point>_listPoints ) {
    for ( Point pt : _listPoints ) {
      m_listPoints.add(pt);
    }
  }
  
  void display(){
    for( int i=0; i<m_listPoints.size()-1; i++){
      Point prevPoint = m_listPoints.get(i);
      Point nextPoint = m_listPoints.get(i+1);
      line( prevPoint.x, prevPoint.y, nextPoint.x, nextPoint.y);
      if( m_listPoints.size() > 3 ){
        arrowPos2(m_listPoints.get(m_listPoints.size()-3),m_listPoints.get(m_listPoints.size()-1),5,10,5);
      }
    }
  }
}
