.class public Lcom/android/server/wm/CustomLetterboxEnhancedController;
.super Ljava/lang/Object;
.source "CustomLetterboxEnhancedController.java"


# instance fields
.field public final mDisplay:Lcom/android/server/wm/DisplayContent;

.field public mDisplayDeviceTypeChanged:Z

.field public mEnhancedEnabled:Z

.field public mEnhancedReason:I

.field public final mHandler:Landroid/os/Handler;

.field public mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

.field public mSeq:J

.field public mShouldShowLetterbox:Z

.field public final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mToken:Landroid/os/Binder;

.field public mWaitingForEnhancedEnabled:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$6bU2BwmUBlKgAO7ijiCh6H1uDvw(Lcom/android/server/wm/CustomLetterboxEnhancedController;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$refreshLetterboxLocked$2(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HnsxE1mpQTOoqt6AC2l8S8O_Rrc(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$scheduleCompleteLetterboxEnhanced$1(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OoqM76CpaJwM61tVE4eYqAMs2Qg(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$onCommitVisibleWallpapers$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$hEbrE8-GdCco1CagG0mzZiTZ2t8(Lcom/android/server/wm/CustomLetterboxEnhancedController;Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->hasCustomLetterboxEnabledLocked(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sdCeyjCskXAcVGmV5qdgk8Jso00(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$hasCustomLetterboxEnabledLocked$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smenhancedReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    .line 106
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$EnhancedControllerToken;

    invoke-direct {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$EnhancedControllerToken;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mToken:Landroid/os/Binder;

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 114
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 115
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static enhancedReasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 331
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CAPTURED_WALLPAPER_NULL"

    return-object p0

    :pswitch_1
    const-string p0, "VISIBLE_WALLPAPER_NULL"

    return-object p0

    :pswitch_2
    const-string p0, "NO_LETTERBOX"

    return-object p0

    :pswitch_3
    const-string p0, "HOME_OR_RECENTS_VISIBLE"

    return-object p0

    :pswitch_4
    const-string p0, "DISPLAY_FOLDED"

    return-object p0

    :pswitch_5
    const-string p0, "LIVE_WALLPAPER"

    return-object p0

    :pswitch_6
    const-string p0, "MODE_DISABLED"

    return-object p0

    :pswitch_7
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_8
    const-string p0, "UNDEFINED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$hasCustomLetterboxEnabledLocked$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCommitVisibleWallpapers$3()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isHomeOrRecentsVisibleLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 261
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->setViewVisible(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 261
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$refreshLetterboxLocked$2(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 244
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/server/wm/LetterboxUiController;->updateLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$scheduleCompleteLetterboxEnhanced$1(JZ)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->completeLetterboxEnhancedLocked(JZ)V

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final applyLetterboxEnhancedIfNeededLocked(ZZZZ)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getEnhancedReasonLocked(ZZ)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    .line 135
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-eq p1, v1, :cond_2

    move p2, v0

    .line 136
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    .line 137
    iput-boolean p4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplayDeviceTypeChanged:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 139
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->applyLetterboxEnhancedLocked(Z)V

    :cond_4
    return-void
.end method

.method public final applyLetterboxEnhancedLocked(Z)V
    .locals 4

    .line 168
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLetterboxEnhancedLocked: seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 171
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabledChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 173
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomLetterbox"

    .line 169
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->removeCallbacks()V

    .line 178
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final completeLetterboxEnhancedLocked(JZ)V
    .locals 2

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isInvalidSeqLocked(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "completeLetterboxEnhancedLocked: seq="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", enabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 216
    invoke-static {p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", applied="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomLetterbox"

    .line 214
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    if-eqz p3, :cond_2

    .line 219
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 220
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldHideWallpaper()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 223
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 290
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "CustomLetterboxEnhancedController(mDisplayId="

    .line 291
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ")"

    .line 293
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mSeq="

    .line 295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ", mEnhancedEnabled="

    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mEnhancedReason="

    .line 299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    invoke-static {p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 302
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mShouldShowLetterbox="

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mWaitingForEnhancedEnabled="

    .line 305
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 307
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final failLetterboxEnhanced()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    const-string v1, "CustomLetterbox"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failLetterboxEnhanced: showLetterbox="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 230
    invoke-static {v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    const/4 v1, 0x1

    .line 232
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getCapturedBlurWallpaperInfo()Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;
    .locals 6

    .line 391
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo-IA;)V

    .line 392
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 393
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;J)V

    .line 394
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    .line 395
    iget v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 396
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez v2, :cond_0

    .line 397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 399
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 400
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 402
    invoke-static {v0, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    const/4 p0, 0x7

    .line 403
    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 404
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 406
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 407
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 408
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 409
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v4

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getScreenshotLocked(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Landroid/graphics/Bitmap;)V

    .line 410
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    .line 411
    invoke-static {v0, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    const/16 p0, 0x8

    .line 412
    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 413
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 417
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 418
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v2

    .line 419
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 420
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmWallpaperWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 421
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmWallpaperHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 423
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getEnhancedReasonLocked(ZZ)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x3

    return p0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x5

    return p0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    new-instance p2, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public final getScreenshotLocked(II)Landroid/graphics/Bitmap;
    .locals 10

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 429
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    const/16 v3, 0x7dd

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, p1

    move v7, p2

    .line 428
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/WmScreenshotController;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getToken()Landroid/os/Binder;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mToken:Landroid/os/Binder;

    return-object p0
.end method

.method public final hasCustomLetterboxEnabledLocked(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 163
    new-instance p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisplayDeviceTypeChanged()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 187
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplayDeviceTypeChanged:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 188
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isHomeOrRecentsVisibleLocked()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInvalidSeqLocked(J)Z
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewVisible()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWaitingForEnhancedEnabledLocked()Z
    .locals 0

    .line 286
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    return p0
.end method

.method public onApplyLetterboxEnhanced()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 193
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onCommitVisibleWallpapers()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final refreshLetterboxLocked(ZZ)V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshLetterboxLocked: shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", immediately="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomLetterbox"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;Z)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    if-nez p2, :cond_1

    return-void

    .line 249
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public removeCallbacks()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final scheduleCompleteLetterboxEnhanced(JZ)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isInvalidSeqLocked(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 202
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 202
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setViewVisible(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final shouldHideView()Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isHomeOrRecentsVisibleLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 273
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 274
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldShowLetterboxLocked()Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 275
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 278
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldHideWallpaper()Z
    .locals 1

    .line 336
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isAllowWallpaperBelowLetterbox()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldShowLetterboxLocked()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    return p0
.end method
