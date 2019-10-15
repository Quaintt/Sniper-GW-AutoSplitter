state("Sniper_x86")
{
    byte level : "engine_x86.dll", 0x044DFE0, 0x10, 0x104, 0x10;
    bool isLoading : "engine_x86.dll", 0x0445C20, 0x478; //works most of the time lmao
    byte3 timer : "GameDLL_x86.dll", 0x00264990, 0x0;
    float fadeOut : "GameDLL_x86.dll", 0x00A86AE4, 0x534, 0x8, 0x13C;
}

startup
{
    settings.Add("TG_split", false, "Split after Training Ground");
    settings.SetToolTip("TG_split", "Enable if you have separate segments for ‘Training Ground’ and ‘One Shot, One Kill’");
}

start
{
    if (current.timer[0] != old.timer[0] && current.level == 0){
        return true;
    }
}

split
{
    if (old.level < current.level){
        if (current.level == 1 && !settings["TG_split"]){
            return;
        }
        return true;
    }
    
    if (current.level == 16 && current.fadeOut == 1 && old.fadeOut != 1){
        return true;
    }
}

isLoading
{
    return current.isLoading;
}