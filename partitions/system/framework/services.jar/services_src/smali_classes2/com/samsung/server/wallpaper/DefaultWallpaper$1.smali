.class public Lcom/samsung/server/wallpaper/DefaultWallpaper$1;
.super Landroid/os/Handler;
.source "DefaultWallpaper.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "DefaultWallpaper"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo p1, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->rebindDefaultWallpaperIfNeeded()V

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentUserId()I

    move-result p0

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "send wallpaperChangedIntent"

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "dex_lockscreen_wallpaper_transparency"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_0

    :cond_1
    const-string v0, "lockscreen_wallpaper_transparent"

    :goto_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_wallpaper_sub"

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_wallpaper"

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "dex_system_wallpaper_transparency"

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    goto :goto_1

    :cond_4
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    :goto_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
