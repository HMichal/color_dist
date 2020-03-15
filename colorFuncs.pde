int GetRed(color inC) 
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  return (min(255, int(1.5 * avgC)));
}

int GetGreen(color inC) 
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  //return (int(avgC/3));
  return (int(avgC/2));
}

int GetBlue(color inC) 
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  return (min(255, int((255 - avgC)/1.5)));
  //return (int((255 - avgC)/2));
}

int GetT(color inC) 
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  return (int(avgC/4));
}
