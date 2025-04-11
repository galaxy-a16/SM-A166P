.class public Lcom/samsung/server/wallpaper/OMCWallpaper$1;
.super Landroid/os/Handler;
.source "OMCWallpaper.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/OMCWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateOmcWallpaper()V

    :goto_0
    return-void
.end method
