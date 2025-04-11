.class public Lcom/samsung/server/wallpaper/SubDisplayMode$1;
.super Landroid/os/Handler;
.source "SubDisplayMode.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->switchWallpaperByDisplayChanged(II)V

    :goto_0
    return-void
.end method
