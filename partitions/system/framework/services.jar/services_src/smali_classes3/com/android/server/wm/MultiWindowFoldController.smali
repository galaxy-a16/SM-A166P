.class public Lcom/android/server/wm/MultiWindowFoldController;
.super Ljava/lang/Object;
.source "MultiWindowFoldController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MultiWindowFoldController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCoverDisplayBounds:[Landroid/graphics/Rect;

.field public mFoldingState:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mIsLidOpened:Z

.field public final mMainDisplayBounds:[Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowFoldController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v0, v1}, [Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v0, v1}, [Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public final applyFoldingPolicy()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "reset"

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    const-string v1, "apply_folding_policy"

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getCoverDisplayBounds(Z)Landroid/graphics/Rect;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v2

    :goto_0
    return-object p0
.end method

.method public getMainDisplayBounds(Z)Landroid/graphics/Rect;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final getTopMostTaskWindowingMode()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initDisplayBounds(Z)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    sget-object p0, Lcom/android/server/wm/MultiWindowFoldController;->TAG:Ljava/lang/String;

    const-string p1, "initDisplayBounds: cannot find display!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    if-eqz p1, :cond_1

    .line 192
    iget v0, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    goto :goto_0

    .line 194
    :cond_1
    iget v0, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    .line 196
    :goto_0
    sget-object p0, Lcom/android/server/wm/MultiWindowFoldController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDisplayBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCoverDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initFoldingState(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    .line 0
    return-void
.end method

.method public isHoldingSplitScreen()Z
    .locals 1

    .line 111
    iget p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLidOpened()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    return p0
.end method

.method public final isSplitScreenActivated()Z
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p0

    return p0
.end method

.method public onDisplayDeviceTypeChanged(I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 124
    :goto_0
    sget-object v2, Lcom/android/server/wm/MultiWindowFoldController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayDeviceTypeChanged opened : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isSplitScreenActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->applyFoldingPolicy()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onKeyguardGoingAway()V
    .locals 4

    .line 155
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    if-nez v0, :cond_1

    .line 156
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isSplitScreenActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->getTopMostTaskWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 159
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const-string v3, "MultiWindowFoldController:keyguard_going_away"

    .line 158
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    :cond_0
    const-string v0, "keyguard_going_away"

    .line 163
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartWakeUpInFoldingState()V
    .locals 4

    .line 144
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isSplitScreenActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->getTopMostTaskWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const-string v3, "MultiWindowFoldController:wakeup"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    :cond_0
    const-string/jumbo v0, "start_home_by_wakeup"

    .line 150
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setFoldingState(ILjava/lang/String;)V
    .locals 3

    .line 115
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    if-eq v0, p1, :cond_0

    .line 116
    sget-object v0, Lcom/android/server/wm/MultiWindowFoldController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFoldingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    :cond_0
    return-void
.end method

.method public updateCoverDisplayBounds(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_3

    move v0, p2

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move p1, p2

    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateMainDisplayBounds(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 201
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_3

    move v0, p2

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move p1, p2

    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
