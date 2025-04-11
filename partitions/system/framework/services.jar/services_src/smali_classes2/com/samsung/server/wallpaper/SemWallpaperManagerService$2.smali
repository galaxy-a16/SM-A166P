.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;
.super Landroid/app/HomeVisibilityListener;
.source "SemWallpaperManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public static synthetic $r8$lambda$mDoCJynH80KNjrgxY5vpj5-iPb8(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->lambda$onHomeVisibilityChanged$0(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHomeVisibilityChanged$0(Z)V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeActivityVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->dispatchHomeVisibilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public onHomeVisibilityChanged(Z)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmHandler(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
