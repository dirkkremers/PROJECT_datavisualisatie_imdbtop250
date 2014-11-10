import processing.pdf.*; 

Table table;

int[] rank = new int[0];
float[] rating = new float[0];
String[] title = new String[0];
int[] movieyear = new int[0];
int[] votes = new int[0];
int[] gross = new int[0];
//int[] budget = new int[0];

void setup() {
  size(1230, 894);
  beginRecord(PDF, "imdbtop250_omzet.pdf");
  colorMode(HSB, 100);
  //background(10);
  smooth();
  noLoop();
  //noStroke();   

  table = loadTable("dataset_v2.csv", "header");
}

void draw() {

  for (TableRow row : table.rows ()) {
    rank = append(rank, row.getInt("rank"));
    rating = append(rating, row.getFloat("rating"));
    title = append(title, row.getString("title"));
    movieyear = append(movieyear, row.getInt("movieyear"));
    votes = append(votes, row.getInt("votes"));
    gross = append(gross, row.getInt("gross"));
  }

  for (int i=0; i<rank.length; i++) {   

    if (rank[i] == 1) {                //The Shawshank Redemption
      stroke(100);
      strokeWeight(3); 
      fill(14, 95.5, 100);
   
    } else if (rank[i] == 168) {       //Avengers
      stroke(100);
      strokeWeight(3);    

    } else if (rank[i] == 11) {        //Star Wars
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 17) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 80) {
      stroke(100);
      strokeWeight(3);
      
    } else if (rank[i] == 9) {        //Lord of the Rings
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 12) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 20) {
      stroke(100);
      strokeWeight(3);
      
    } else if (rank[i] == 38) {        //Charlie Chaplin
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 41) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 66) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 119) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 124) {
      stroke(100);
      strokeWeight(3);
    } else if (rank[i] == 135) {
      stroke(100);
      strokeWeight(3);
   
      
    } else {
      noStroke();
      fill(14, (100-rank[i]/2), 100, 85);
    }

    ellipse((-23000+movieyear[i]*12), ((height/2)-((gross[i]/2000000)-400)), (60-(rank[i]/5)), (60-(rank[i]/5)));
  }
  endRecord();
}

