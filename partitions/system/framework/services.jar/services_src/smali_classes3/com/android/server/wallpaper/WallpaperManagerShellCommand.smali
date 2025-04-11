.class public Lcom/android/server/wallpaper/WallpaperManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WallpaperManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-void
.end method


# virtual methods
.method public final getWallpaperDimAmount()I
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current wallpaper dim amount is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->onHelp()V

    return v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "get-dim-amount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "dim-with-uid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "set-dim-amount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getWallpaperDimAmount()I

    move-result p0

    return p0

    .line 52
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->onHelp()V

    return v2

    .line 47
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->setDimmingWithUid()I

    move-result p0

    return p0

    .line 45
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->setWallpaperDimAmount()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5725f478 -> :sswitch_4
        -0x11a55192 -> :sswitch_3
        0x5db -> :sswitch_2
        0x30cf41 -> :sswitch_1
        0x12749814 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Wallpaper manager commands:"

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-dim-amount DIMMING"

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the current dimming value to DIMMING (a number between 0 and 1)."

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  dim-with-uid UID DIMMING"

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the wallpaper dim amount to DIMMING as if an app with uid, UID, called it."

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  get-dim-amount"

    .line 73
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Get the current wallpaper dim amount."

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setDimmingWithUid()I
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimming the wallpaper for UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setWallpaperDimAmount()I
    .locals 3

    .line 82
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmount(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "WallpaperManagerShellCommand"

    const-string v2, "Can\'t set wallpaper dim amount"

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimming the wallpaper to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
