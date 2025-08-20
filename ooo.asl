/*
  Öoo Autosplitter v0.4.2 - created by asheevee_
  Based heavily off of the UNDERTALE Autosplitter by spaceglace, antimYT, Xargot, LukeSaward, deesoff, HFK, and NERS
*/

state ("Ooo")
{
  string8 window_title : "Ooo.exe", 0xDCBD38, 0x0; // changes with the number of bombs you have!! really cute
  ulong igt : "Ooo.exe", 0xBAD6F0, 0x48, 0x10, 0x10, 0x440;
  double player_xpos : "Ooo.exe", 0xDBD138, 0x18, 0x20, 0x48, 0x10, 0xF20, 0x0;
  double player_ypos : "Ooo.exe", 0xDBD138, 0x18, 0x20, 0x48, 0x10, 0xF30, 0x0;
  double camera_xpos : "Ooo.exe", 0xB7DE30, 0x8F0, 0xB0, 0x48, 0x10, 0x10, 0x0;
  double camera_ypos : "Ooo.exe", 0xB7DE30, 0x8F0, 0xB0, 0x48, 0x10, 0x20, 0x0;
}

startup
{
  settings.Add("area1", true, "Area 1");
  settings.Add("area2", true, "Area 2");
  settings.Add("area3", true, "Area 3");
  settings.Add("area4", true, "Area 4");
  settings.Add("area5", true, "Area 5");
  settings.Add("area6", true, "Area 6");
  settings.Add("area7", true, "Area 7");
  settings.Add("area8", true, "Area 8");
  settings.Add("heart", true, "The Heart");
  settings.Add("escape", true, "Escape");
  
  settings.Add("r-area1", false, "Enter Area 1", "area1");
  settings.Add("w-bomb1", true, "Obtain the first bomb", "area1");
  settings.Add("r-statue-00-01", false, "Find the Animal Well statue at [00,01]", "area1");
  settings.Add("r-warp-16-06", false, "Enter the warp room at [16,06]", "area1");
  settings.Add("r-warp-16-03", false, "Enter the secret warp room at [16,03]", "area1");
  settings.Add("r-statue-17-02", false, "Find the Mosa Lina statue at [17,02]", "area1");
  settings.Add("r-statue-19-07", false, "Find the Braid statue at [19,07]", "area1");

  settings.Add("r-area2", true, "Enter Area 2", "area2");
  settings.Add("r-warp-18-08", false, "Enter the warp room at [18,08]", "area2");
  settings.Add("r-warp-23-08", false, "Enter the warp room at [23,08]", "area2");
  settings.Add("r-statue-26-07", false, "Find the Bomb Chicken statue at [26,07]", "area2");
  settings.Add("r-warp-26-10", false, "Enter the warp room at [26,10]", "area2");
  settings.Add("r-statue-28-08", false, "Find the BoxBoy! statue at [28,08]", "area2");
  settings.Add("r-area2deadend", false, "Reach the dead end in Area 2 at [32,11]", "area2");
  settings.Add("r-warp-15-08", false, "Enter the warp room at [15,08]", "area2");
  
  settings.Add("r-area3", true, "Enter Area 3", "area3");
  settings.Add("r-warp-10-09", false, "Enter the warp room at [10,09]", "area3");
  settings.Add("r-statue-08-08", false, "Find the Celeste statue at [08,08]", "area3");
  settings.Add("r-warp-06-09", false, "Enter the warp room at [06,09]", "area3");
  settings.Add("r-warp-01-06", false, "Enter the secret warp room at [01,06]", "area3");
  settings.Add("r-statue-00-06", false, "Find the Metroid statue at [00,06]", "area3");
  settings.Add("r-statue-04-08", false, "Find the Yoshi's Island statue at [04,08]", "area3");
  settings.Add("r-warp-03-09", false, "Enter the warp room at [03,09]", "area3");
  settings.Add("r-area3deadend", false, "Reach the dead end in Area 3 at [00,08]", "area3");
  settings.Add("r-warp-12-10", false, "Enter the warp room at [12,10]", "area3");
  settings.Add("r-warp-11-14", false, "Enter the warp room at [11,14]", "area3");
  
  settings.Add("r-area4", true, "Enter Area 4", "area4");
  settings.Add("r-warp-14-16", false, "Enter the warp room at [14,16]", "area4");
  settings.Add("w-bomb2", true, "Obtain the second bomb", "area4");
  settings.Add("r-warp-09-18", false, "Enter the warp room at [09,18]", "area4");
  settings.Add("r-statue-06-15", false, "Find the COCOON statue at [06,15]", "area4");
  settings.Add("r-area4deadend", false, "Reach the dead end in Area 4 at [06,19]", "area4");
  settings.Add("r-warp-16-14", false, "Enter the warp room at [16,14]", "area4");
  settings.Add("r-warp-15-10", false, "Enter the secret warp room at [15,10]", "area4");
  settings.Add("r-statue-18-11", false, "Find the VVVVVV statue at [18,11]", "area4");
  settings.Add("r-statue-18-13", false, "Find the You Have to Win the Game statue at [18,13]", "area4");
  
  settings.Add("r-area5", true, "Enter Area 5", "area5");
  settings.Add("r-warp-17-18", false, "Enter the warp room at [17,18]", "area5");
  settings.Add("r-warp-16-20", false, "Enter the warp room at [16,20]", "area5");
  settings.Add("r-statue-18-19", false, "Find the Leap Year statue at [18,19]", "area5");
  settings.Add("r-warp-13-21", false, "Enter the warp room at [13,21]", "area5");
  settings.Add("r-warp-17-22", false, "Enter the warp room at [17,22]", "area5");
  settings.Add("r-warp-21-25", false, "Enter the warp room at [21,25]", "area5");
  settings.Add("r-warp-26-26", false, "Enter the warp room at [26,26]", "area5");
  settings.Add("r-statue-28-24", false, "Find the Downwell statue at [28,24]", "area5");
  settings.Add("r-statue-29-25", false, "Find the Tower of Heaven statue at [29,25]", "area5");
  settings.Add("r-area5deadend", false, "Reach the dead end in Area 5 at [30,27]", "area5");
  
  settings.Add("r-area6", true, "Enter Area 6", "area6");
  settings.Add("r-warp-11-22", false, "Enter the warp room at [11,22]", "area6");
  settings.Add("r-warp-11-24", false, "Enter the warp room at [11,24]", "area6");
  settings.Add("r-warp-13-25", false, "Enter the warp room at [13,25]", "area6");
  settings.Add("r-warp-09-26", false, "Enter the warp room at [09,26]", "area6");
  settings.Add("r-statue-10-25", false, "Find the Moonleap statue at [10,25]", "area6");
  settings.Add("r-warp-06-29", false, "Enter the warp room at [06,29]", "area6");
  settings.Add("r-statue-04-28", false, "Find the Maze of Galious statue at [04,28]", "area6");
  settings.Add("r-area6deadend", false, "Reach the dead end in Area 6 at [02,33]", "area6");
  
  settings.Add("r-area7", true, "Enter Area 7", "area7");
  settings.Add("r-warp-16-24", false, "Enter the warp room at [16,24]", "area7");
  settings.Add("r-warp-16-27", false, "Enter the warp room at [16,27]", "area7");
  settings.Add("r-statue-16-25", false, "Find the Poinpy statue at [16,25]", "area7");
  settings.Add("r-statue-14-26", false, "Find the La-Mulana 2 statue at [14,26]", "area7");
  settings.Add("r-warp-13-28", false, "Enter the warp room at [13,28]", "area7");
  settings.Add("r-statue-11-27", false, "Find the Witch Way statue at [11,27]", "area7");
  settings.Add("r-area7deadend", false, "Reach the dead end in Area 7 at [12,29]", "area7");
  settings.Add("r-warp-20-27", false, "Enter the warp room at [20,27]", "area7");
  
  settings.Add("r-area8", true, "Enter Area 8", "area8");
  settings.Add("r-warp-18-29", false, "Enter the warp room at [18,29]", "area8");
  settings.Add("r-warp-21-29", false, "Enter the warp room at [21,29]", "area8");
  settings.Add("r-warp-21-31", false, "Enter the warp room at [21,31]", "area8");
  settings.Add("r-warp-28-30", false, "Enter the warp room at [28,30]", "area8");
  settings.Add("r-statue-30-29", false, "Find the Linelith statue at [30,29]", "area8");
  settings.Add("r-warp-26-31", false, "Enter the warp room at [26,31]", "area8");
  settings.Add("r-area8deadend", false, "Reach the dead end in Area 8 at [26,33]", "area8");
  
  settings.Add("r-area9", true, "Enter the Heart Area", "heart");
  settings.Add("r-warp-15-31", false, "Enter the warp room at [15,31]", "heart");
  settings.Add("s-heart", false, "Destroy the Heart", "heart");
  
  settings.Add("r-warp-18-08-heart", false, "Enter the warp room at [18,08] after destroying the Heart", "escape");
  settings.Add("r-arealast", false, "Re-enter Area 1 after destroying the Heart", "escape");
  settings.Add("r-warp-16-06-heart", false, "Enter the warp room at [16,06] after destroying the Heart", "escape");
  settings.Add("r-warp-08-03", true, "Enter the warp room at [08,03]", "escape");
  settings.Add("r-warp-04-02", false, "Enter the warp room at [04,02]", "escape");
  settings.Add("r-warp-02-02", false, "Enter the warp room at [02,02]", "escape");
  settings.Add("s-end", true, "Ending", "escape");

  
  //Object array structure
  vars.visited = 0; // (bool)   have we triggered this split already?
  vars.screenx = 1; // (double) required current screen_x, -1 if none
  vars.screeny = 2; // (double) required current screen_y, -1 if none
  vars.special = 3; // (int) required special logic function, -1 if none
  
  vars.goals = new Dictionary<string, object[]>()
  {
    // Area 1
    {"r-area1",        new object[] {false,  1, 0,  1}},
    {"w-bomb1",        new object[] {false,  0, 2,  2}},
    {"r-statue-00-01", new object[] {false,  0, 1,  3}},
    {"r-warp-16-06",   new object[] {false, 16, 6, -1}},
    {"r-warp-16-03",   new object[] {false, 16, 3, -1}},
    {"r-statue-17-02", new object[] {false, 17, 2, -1}},
    {"r-statue-19-07", new object[] {false, 19, 7, -1}},
    
    // Area 2
    {"r-area2",        new object[] {false, 17,  7, -1}},
    {"r-warp-18-08",   new object[] {false, 18,  8, -1}},
    {"r-warp-23-08",   new object[] {false, 23,  8, -1}},
    {"r-statue-26-07", new object[] {false, 26,  7, -1}},
    {"r-warp-26-10",   new object[] {false, 26, 10, -1}},
    {"r-statue-28-08", new object[] {false, 28,  8, -1}},
    {"r-area2deadend", new object[] {false, 32, 11, -1}},
    {"r-warp-15-08",   new object[] {false, 15,  8, -1}},
    
    // Area 3
    {"r-area3",        new object[] {false, 11,  9, -1}},
    {"r-warp-10-09",   new object[] {false, 10,  9, -1}},
    {"r-statue-08-08", new object[] {false,  8,  8, -1}},
    {"r-warp-06-09",   new object[] {false,  6,  9, -1}},
    {"r-warp-01-06",   new object[] {false,  1,  6, -1}},
    {"r-statue-00-06", new object[] {false,  0,  6,  4}},
    {"r-statue-04-08", new object[] {false,  4,  8, -1}},
    {"r-warp-03-09",   new object[] {false,  3,  9, -1}},
    {"r-area3deadend", new object[] {false,  0,  8, -1}},
    {"r-warp-12-10",   new object[] {false, 12, 10, -1}},
    {"r-warp-11-14",   new object[] {false, 11, 14, -1}},
    
    // Area 4
    {"r-area4",        new object[] {false, 13, 15, -1}},
    {"r-warp-14-16",   new object[] {false, 14, 16, -1}},
    {"w-bomb2",        new object[] {false, 13, 19,  5}},
    {"r-warp-09-18",   new object[] {false,  9, 18, -1}},
    {"r-statue-06-15", new object[] {false,  6, 15, -1}},
    {"r-area4deadend", new object[] {false,  6, 19, -1}},
    {"r-warp-16-14",   new object[] {false, 16, 14, -1}},
    {"r-warp-15-10",   new object[] {false, 15, 10, -1}},
    {"r-statue-18-11", new object[] {false, 18, 11, -1}},
    {"r-statue-18-13", new object[] {false, 18, 13,  6}},
    
    // Area 5
    {"r-area5",        new object[] {false, 18, 18, -1}},
    {"r-warp-17-18",   new object[] {false, 17, 18, -1}},
    {"r-warp-16-20",   new object[] {false, 16, 20, -1}},
    {"r-statue-18-19", new object[] {false, 18, 19, -1}},
    {"r-warp-13-21",   new object[] {false, 13, 21, -1}},
    {"r-warp-17-22",   new object[] {false, 17, 22, -1}},
    {"r-warp-21-25",   new object[] {false, 21, 25, -1}},
    {"r-warp-26-26",   new object[] {false, 26, 26, -1}},
    {"r-statue-28-24", new object[] {false, 28, 24, -1}},
    {"r-statue-29-25", new object[] {false, 29, 25, -1}},
    {"r-area5deadend", new object[] {false, 30, 27, -1}},
    
    // Area 6
    {"r-area6",        new object[] {false, 10, 22, -1}},
    {"r-warp-11-22",   new object[] {false, 11, 22, -1}},
    {"r-warp-11-24",   new object[] {false, 11, 24, -1}},
    {"r-warp-13-25",   new object[] {false, 13, 25, -1}},
    {"r-warp-09-26",   new object[] {false,  9, 26, -1}},
    {"r-statue-10-25", new object[] {false, 10, 25, -1}},
    {"r-warp-06-29",   new object[] {false,  6, 29, -1}},
    {"r-statue-04-28", new object[] {false,  4, 28, -1}},
    {"r-area6deadend", new object[] {false,  2, 33, -1}},
    
    // Area 7    
    {"r-area7",        new object[] {false, 15, 23, -1}},
    {"r-warp-16-24",   new object[] {false, 16, 24, -1}},
    {"r-warp-16-27",   new object[] {false, 16, 27, -1}},
    {"r-statue-16-25", new object[] {false, 16, 25, -1}},
    {"r-statue-14-26", new object[] {false, 14, 26, -1}},
    {"r-warp-13-28",   new object[] {false, 13, 28, -1}},
    {"r-statue-11-27", new object[] {false, 11, 27, -1}},
    {"r-area7deadend", new object[] {false, 12, 29, -1}},
    {"r-warp-20-27",   new object[] {false, 20, 27, -1}},
    
    // Area 8
    {"r-area8",        new object[] {false, 18, 28, -1}},
    {"r-warp-18-29",   new object[] {false, 18, 29, -1}},
    {"r-warp-21-29",   new object[] {false, 21, 29, -1}},
    {"r-warp-21-31",   new object[] {false, 21, 31, -1}},
    {"r-warp-28-30",   new object[] {false, 28, 30, -1}},
    {"r-statue-30-29", new object[] {false, 30, 29, -1}},
    {"r-warp-26-31",   new object[] {false, 26, 31, -1}},
    {"r-area8deadend", new object[] {false, 26, 33, -1}},
    
    // The Heart 
    {"r-area9",      new object[] {false, 16, 30, -1}},
    {"r-warp-15-31", new object[] {false, 15, 31, -1}},
    {"s-heart",      new object[] {false, -1, 31,  7}},
    
    // Escape
    {"r-warp-18-08-heart", new object[] {false, 18, 8,  7}},
    {"r-arealast",         new object[] {false, 17, 6,  7}},
    {"r-warp-16-06-heart", new object[] {false, 16, 6,  7}},
    {"r-warp-08-03",       new object[] {false,  8, 3, -1}},
    {"r-warp-04-02",       new object[] {false,  4, 2, -1}},
    {"r-warp-02-02",       new object[] {false,  2, 2, -1}},
    {"s-end",              new object[] {false,  1, 0,  8}}
  };
  
  vars.log = (Action<string>)((message) => {
    print("[Öoo] " + message);
  });
  
  vars.reactivate = (Action)(() =>
  {
    foreach(string goal in vars.goals.Keys)
      vars.goals[goal][vars.visited] = false;

    vars.log("All splits have been reset");
  });
}

init
{
  refreshRate = 60;
  vars.justStarted = true;
  vars.heartBreakCutscene = false;
  vars.heartBreak = false;
  
  // todo: support future versions if/when they release (so far all pointers have worked for all versions)
  // todo: support non-windows and itch releases, if those have different pointers
}

update
{
  current.phase = timer.CurrentPhase;
  if(vars.justStarted) {
    vars.justStarted = false;
  } else {
    // Did the timer just start?
    if(current.phase == TimerPhase.Running && old.phase == TimerPhase.NotRunning) {
      vars.reactivate();
      vars.heartBreakCutscene = false;
      vars.heartBreak = false;

      // Log what splits have been selected
      string splitState = "";

      foreach(string goal in vars.goals.Keys)
        splitState += (settings[goal]) ? "1" : "0";

      vars.log("STATE  " + splitState);
    }
    
    // Did the timer just stop?
    else if(current.phase == TimerPhase.NotRunning && old.phase == TimerPhase.Running)
        vars.log("PHASE  " + old.phase.ToString() + " -> " + current.phase.ToString());
  }
  
  // Round here to resolve float imprecision nonsense
  current.screen_x = Math.Round(current.camera_xpos / 320);
  current.screen_y = Math.Round(current.camera_ypos / 240);
  
  // Has the bird opening mouth cutscene started playing? (camera moves to [1,0] but player does not, excluding 5216 makes sure it doesn't trigger during the intro)
  if(current.screen_x == 1 && current.screen_y == 0 && current.player_ypos >= 240 && current.player_ypos != 5216 && !vars.heartBreakCutscene) {
    vars.heartBreakCutscene = true;
    vars.log("INFO heartBreakCutscene: screen_x " + current.screen_x + " screen_y " + current.screen_y + " player_ypos " + current.player_ypos);
  }
  // Has said cutscene finished playing? (camera moves back to player)
  if(vars.heartBreakCutscene && current.screen_y > 0 && !vars.heartBreak) {
    vars.heartBreak = true;
    vars.log("INFO heartBreak: screen_x " + current.screen_x + " screen_y " + current.screen_y + " player_ypos " + current.player_ypos);
  }
  
  //vars.log("INFO xpos " + current.player_xpos.ToString());
  
  // todo: track map completion?
}

start
{
  // player instance is created the moment time starts (position is read as 0 before then)
  if(old.igt == 0 && current.player_xpos != 0) {
    vars.log("EVENT start");
    return true;
  }
}

reset
{
  // no longer need to check position/screen since runs must be one continuous stream of gameplay
  if(current.igt == 0 && old.igt > 0) {
    vars.log("EVENT reset");
    return true;
  }
}

split
{
  
  /*
  if(old.screen_x != current.screen_x || old.screen_y != current.screen_y) {
    vars.log("EVENT game r{[" + old.screen_x + "," + old.screen_y + "],[" + current.screen_x + "," + current.screen_y + "]} " + 
                    "p{[" + old.player_xpos + "," + old.player_ypos + "],[" + current.player_xpos + "," + current.player_ypos + "]} ");
  }
  */
  
  foreach(string goal in vars.goals.Keys) {
    if(settings[goal] && !vars.goals[goal][vars.visited]) {
      
      if(vars.goals[goal][vars.screenx] != -1 && current.screen_x != vars.goals[goal][vars.screenx])
        continue;
      
      if(vars.goals[goal][vars.screeny] != -1 && current.screen_y != vars.goals[goal][vars.screeny])
        continue;
      
      if(vars.goals[goal][vars.special] != -1) {
        bool pass = false;
        
        switch((int)vars.goals[goal][vars.special]) {
          
          case 1: // r-area1
            pass = (current.player_xpos > 0);
            break;
            
          case 2: // w-bomb1
            pass = (old.window_title == "Ö" && current.window_title == "Öo");
            break;
          
          // the statue rooms listed don't play the jingle immediately upon entering, use player position to check if they've collided with that trigger
          case 3: // r-statue-00-01
            pass = (current.player_xpos <= 282); //10 pixel offset from the trigger (explained below)
            break;
          
          case 4: // r-statue-00-06
            pass = (current.player_ypos >= 1456);
            break;
          
          case 5: // w-bomb2
            pass = (old.window_title == "Öo" && current.window_title == "Öoo");
            break;
          
          case 6: // r-statue-18-13
            pass = (current.player_ypos >= 3136);
            break;

          case 7: // every goal that requires the heart broken
            pass = (vars.heartBreak);
            break;
            
          // igt stops when the player collides with a trigger at x=288
          // exact hitboxes vary depending on animation, but it looks like the vast majority of the time, 10 pixels is the proper offset (x<=298)
          case 8: // s-end
            pass = (current.player_xpos <= 298);
            break;
        }
        
        if(!pass)
          continue;
      }
      
      vars.log("EVENT split " + goal +
        " screenx: " + vars.goals[goal][vars.screenx] +
        " screeny: " + vars.goals[goal][vars.screeny] +
        " special: " + vars.goals[goal][vars.special]);
      
      vars.goals[goal][vars.visited] = true;
      return true;
    }
  }
  return false;
}

isLoading
{
  // makes it so that livesplit exclusively uses game time and doesn't try to interpolate it between script calls
  return true;
}

gameTime
{
  if (current.igt != old.igt)
    // igt is stored in frames as a ulong, convert it properly
    return TimeSpan.FromSeconds(current.igt / 60d); 
}