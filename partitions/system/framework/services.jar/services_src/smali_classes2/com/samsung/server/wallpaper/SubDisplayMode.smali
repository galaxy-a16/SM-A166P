.class public Lcom/samsung/server/wallpaper/SubDisplayMode;
.super Ljava/lang/Object;
.source "SubDisplayMode.java"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

.field public final mHandler:Landroid/os/Handler;

.field public mIWindowManager:Landroid/view/IWindowManager;

.field public mLidState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode$1;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/SubDisplayMode$2;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    const-string v0, "SubDisplayMode"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->initSubDisplayMode()V

    return-void
.end method


# virtual methods
.method public getFolderStateBasedWhich(I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result p0

    return p0
.end method

.method public getFolderStateBasedWhich(II)I
    .locals 1

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez p0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFolderStateBasedWhich state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubDisplayMode"

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    or-int/lit8 p0, p1, 0x10

    goto :goto_0

    :cond_1
    or-int/lit8 p0, p1, 0x4

    :goto_0
    return p0
.end method

.method public getLidState()I
    .locals 0

    iget p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    return p0
.end method

.method public initSubDisplayMode()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mIWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFolderState(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLidState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    return-void
.end method

.method public updateLidStateFromInputManager()V
    .locals 5

    const-string v0, "SubDisplayMode"

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "updateLidStateFromInputManager: inputManagerService is null! Setting lidState to UNKNOWN(ABSENT)"

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v3, -0x100

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLidStateFromInputManager: lidState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setLidState(I)V

    return-void
.end method
