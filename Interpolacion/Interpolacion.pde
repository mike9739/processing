float Step( float x0, float x1, float t) {
  if(t < 0.5f){
    return x0;
  } else {
    return x1;
  }
}

float Linear(float x0, float x1, float t){
  if(t >= 1.0f) {
    return x1;
  }
  return x0 + t * (x1- x0);
}

float Cosine(float x0, float x1, float t){
  if(t >= 1.0f){
    return x1;
  }
  
  return Linear(x0,x1, -cos(PI*t)/2.0f+0.5f);
}

float SmothStep(float x0, float x1, float t){
   if(t >= 1.0f){
    return x1;
  }
  return Linear(x0,x1, t*t*(3-2*t));
}
