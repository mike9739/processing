class Espiral{
    float alpha,theta,x_c,y_c,theta_min,theta_max,delta;
    Espiral(float x_c,float y_c,float theta_min, float theta_max,float delta,float alpha){
      this.x_c = x_c;
      this.y_c = y_c;
      theta_min=0;
      this.theta_min = theta_min;
      this.theta_max=theta_max*PI;
      this.delta = delta;
      this.alpha=alpha;
      
      
    }
    
   void Dibujar(){
     noFill();
     stroke(0,0,64);
     beginShape();
     for(theta=theta_min;theta<theta_max;theta+=delta){
       float x = alpha*theta*cos(theta)+x_c;
       float y = alpha*theta*sin(theta)+y_c;
       vertex(x,y);
       print(x);
       print(y);
     }
     endShape();
   }
    
}
