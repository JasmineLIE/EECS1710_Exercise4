class Letter {

  PShape s;
  PVector position;
  PVector[] vertices;
  float spread = 0.2;

  Letter(PShape _s, float x, float y) {
    s = _s;
    position = new PVector(x, y);
    vertices = new PVector[s.getVertexCount()];
  }
  void update() {
    for (int i=0; i<vertices.length; i++) {
      vertices[i] = s.getVertex(i);
      vertices[i].add(new PVector(random(-spread, spread), random(-spread, spread))); //this makes the letters move ever so slightly 
      s.setVertex(i, vertices[i]);
    }
  }
  void draw() {
    //this assumes you're calling pg.beginDraw() and pg.endDraw() elsewhere
    pgA.pushMatrix();
    pgA.shapeMode(CENTER);
    pgA.translate(position.x, position.y, position.z);
    pgA.shape(s, 0, 0);
    pgA.popMatrix();
    pgB.pushMatrix();
    pgB.shapeMode(CENTER);
    pgB.translate(position.x, position.y, position.z);
    pgB.shape(s, 0, 0);
    pgB.popMatrix();
  }

  void run() {
    update();
    draw();
  }
}
