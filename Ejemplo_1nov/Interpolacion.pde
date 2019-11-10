float StepX( float x0, float x1, float t) {
  if(t < 0.5f){
    return x0;
  } else {
    return x1;
  }
}

float LinearX(float x0, float x1, float t){
  if(t >= 1.0f) {
    return x1;
  }
  return x0 + t * (x1- x0);
}

float CosineX(float x0, float x1, float t){
  if(t >= 1.0f){
    return x1;
  }
  
  return LinearX(x0,x1, -cos(PI*t)/2.0f+0.5f);
}

float SmothStepX(float x0, float x1, float t){
   if(t >= 1.0f){
    return x1;
  }
  return LinearX(x0,x1, t*t*(3-2*t));
}

float StepY( float x0, float x1, float t) {
  if(t < 0.5f){
    return x0;
  } else {
    return x1;
  }
}

float LinearY(float x0, float x1, float t){
  if(t >= 1.0f) {
    return x1;
  }
  return x0 + t * (x1- x0);
}

float CosineY(float x0, float x1, float t){
  if(t >= 1.0f){
    return x1;
  }
  
  return LinearY(x0,x1, -cos(PI*t)/2.0f+0.5f);
}

float SmothStepY(float x0, float x1, float t){
   if(t >= 1.0f){
    return x1;
  }
  return LinearY(x0,x1, t*t*(3-2*t));
}
