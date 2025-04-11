.class public Lcom/android/server/wm/BoundsCompatAlignmentController;
.super Ljava/lang/Object;
.source "BoundsCompatAlignmentController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BoundsCompatAlignmentController"


# instance fields
.field public mAnimationEnabled:Z

.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

.field public final mRecomputeConfiguration:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$XU09VQ8rSCXNJmY_wQauL1rhOYQ(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/BoundsCompatAlignmentController;->lambda$recomputeConfiguration$1(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6QotQfIEtX-0kBgipQuwYtpVPY(Lcom/android/server/wm/BoundsCompatAlignmentController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->recomputeConfiguration()V

    return-void
.end method

.method public static synthetic $r8$lambda$hyHQUAgH6g8KE_qR1zi32eZLudc(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatAlignmentController;->lambda$recomputeConfiguration$0(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->get()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatUtils;->getDefaultDisplayAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignmentController-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;-><init>()V

    return-void
.end method

.method public static dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/wm/BoundsCompatAlignmentController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ":[ mLast"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ", FeatureEnabled="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL:Z

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, ", mAnimationEnabled="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x1dee2db3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const v2, 0x23f4ef7

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "-setBoundsCompatAlignment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_2
    const-string v0, "-setBoundsCompatAlignmentAnimation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v0, ""

    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object p0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    invoke-static {p2, v0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v3

    :cond_5
    aget-object p0, p1, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->setAlignmentLocked(I)V

    invoke-static {p2, v0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method public static getAlignmentLocked()I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result v0

    return v0
.end method

.method public static getController()Lcom/android/server/wm/BoundsCompatAlignmentController;
    .locals 1

    sget-object v0, Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;->sController:Lcom/android/server/wm/BoundsCompatAlignmentController;

    return-object v0
.end method

.method public static getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    return-object v0
.end method

.method public static synthetic lambda$recomputeConfiguration$0(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$recomputeConfiguration$1(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/server/wm/BoundsCompatAlignmentController;->supportsDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public static scheduleRecomputeConfigurationLocked()V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAlignmentLocked(I)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result v1

    if-ne p0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BoundsCompatAlignment;->setAlignment(I)V

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->scheduleRecomputeConfigurationLocked()V

    return-void
.end method

.method public static setAtmService(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iput-object p0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final recomputeConfiguration()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz p0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final supportsDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return p0
.end method
