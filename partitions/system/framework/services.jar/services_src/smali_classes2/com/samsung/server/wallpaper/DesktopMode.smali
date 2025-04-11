.class public Lcom/samsung/server/wallpaper/DesktopMode;
.super Ljava/lang/Object;
.source "DesktopMode.java"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mDesktopMode:I

.field public final mDesktopModeLock:Ljava/lang/Object;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mHandler:Landroid/os/Handler;

.field public mIsDesktopMode:Z

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mWallpaperBindingFallbackCount:I

.field public mWallpaperBindingFallbackExecuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    const-string v0, "DesktopMode"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iput-object p3, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->initDesktopMode()V

    return-void
.end method


# virtual methods
.method public getDesktopMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperBindingFallbackExecuted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    return p0
.end method

.method public increaseWallpaperBindingFallbackCount()V
    .locals 1

    iget v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    return-void
.end method

.method public final initDesktopMode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public isDesktopDualMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopModeEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopSingleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendWallpaperEngineShownIntent(I)V
    .locals 0

    return-void
.end method

.method public setWallpaperBindingFallbackExecuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    return-void
.end method
