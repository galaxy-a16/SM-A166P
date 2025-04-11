.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;
.super Ljava/lang/Object;
.source "SemWallpaperManagerService.java"


# instance fields
.field public mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDesktopWallpaperFile:Ljava/io/File;

.field public final mDesktopWallpaperInfoFile:Ljava/io/File;

.field public final mDesktopWallpaperLockFile:Ljava/io/File;

.field public mLockWallpaperFileObserver:Landroid/os/FileObserver;

.field public final mSubDisplayWallpaperFile:Ljava/io/File;

.field public final mSubDisplayWallpaperInfoFile:Ljava/io/File;

.field public final mSubDisplayWallpaperLockFile:Ljava/io/File;

.field public final mVirtualDisplayWallpaperFile:Ljava/io/File;

.field public final mVirtualDisplayWallpaperInfoFile:Ljava/io/File;

.field public final mWallpaperDir:Ljava/io/File;

.field public final mWallpaperFile:Ljava/io/File;

.field public mWallpaperFileObserver:Landroid/os/FileObserver;

.field public final mWallpaperLockDir:Ljava/io/File;

.field public final mWallpaperLockFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    .line 529
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    const-string v0, "SemWallpaperManagerService"

    const-string v1, "SemWallpaperObserver"

    .line 534
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 537
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_orig"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 540
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 541
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_lock_orig"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 545
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_desktop_orig"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    .line 546
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_desktop_lock_orig"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    .line 547
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_desktop_info.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperInfoFile:Ljava/io/File;

    .line 551
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_sub_display_orig"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    .line 552
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_sub_display_lock_orig"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    .line 553
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_subdisplay_info.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperInfoFile:Ljava/io/File;

    .line 557
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_virtual_display_orig"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    .line 558
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_virtualdisplay_info.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperInfoFile:Ljava/io/File;

    .line 562
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x688

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    .line 580
    new-instance p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    .line 599
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-void
.end method


# virtual methods
.method public getLockWallpaperFileObserver()Landroid/os/FileObserver;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockWallpaperFileObserver: mLockWallpaperFileObserver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWallpaperLockDir.getAbsolutePath() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 608
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    .line 607
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    return-object p0
.end method

.method public getWallpaperFileObserver()Landroid/os/FileObserver;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    return-object p0
.end method
