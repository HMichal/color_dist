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

color GetRGBColor(color inC, int t)
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  return (color(min(255, int(1.5 * avgC)), int(avgC/1.5), 
    min(255, int((255 - avgC)/2.5)), t));
}
color GetHSBColor(color inC)
{
  int avgC = int((red(inC) + green(inC) + blue(inC))/3);
  int clr = 360 - int(map(avgC, 0, 255, 0, 360));
  int brt, gry, gvn;

  brt = int(map(avgC, 0, 255, 60, 100));
  gry = int(map(avgC, 0, 255, 90, 100));

  if (clr < 180) 
  {

    gvn = int(map(clr, 0, 360, 0, 120));
  } else if (clr < 210)
  {

    gvn = int(map(clr, 0, 360, 200, 360));
  } else {

    gvn = int(map(clr, 0, 360, 200, 360));
  }
  return (color(gvn, gry, brt));
}
