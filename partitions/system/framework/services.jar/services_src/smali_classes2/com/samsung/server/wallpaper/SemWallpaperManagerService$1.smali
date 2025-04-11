.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWallpaperManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 289
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 290
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 291
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", densityDpi="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", orientation [old="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 294
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", new="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemWallpaperManagerService"

    .line 293
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 299
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 301
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    if-nez p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 303
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 308
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 310
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 311
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 327
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    goto :goto_1

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors()V

    :cond_3
    :goto_1
    return-void
.end method
