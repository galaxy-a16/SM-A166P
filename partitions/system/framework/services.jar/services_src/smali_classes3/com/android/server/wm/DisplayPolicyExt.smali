.class public Lcom/android/server/wm/DisplayPolicyExt;
.super Ljava/lang/Object;
.source "DisplayPolicyExt.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsWindow:Lcom/android/server/wm/WindowState;

.field public final mLastPayHandlerFrame:Landroid/graphics/Rect;

.field public mLastPayHandlerVisible:Z

.field public mNavBarImeBtnAllRotationsAllowed:Z

.field public mNavigationMode:I

.field public mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

.field public mPayHandlerWin:Lcom/android/server/wm/WindowState;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTaskbarController:Lcom/android/server/wm/TaskbarController;


# direct methods
.method public static synthetic $r8$lambda$Wrdq_QtzYPs3u3Ud1PG5s7RSPm0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->lambda$addWindowLw$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oR7nx8DYU6Ui3P2cOsIsdBVbcn8(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->lambda$removeWindowLw$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 125
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 128
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/server/wm/OneHandOpPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/OneHandOpPolicy;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_1

    .line 134
    new-instance p1, Lcom/android/server/wm/CoverPolicy;

    invoke-direct {p1, p0}, Lcom/android/server/wm/CoverPolicy;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 138
    :cond_1
    new-instance p1, Lcom/android/server/wm/TaskbarController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskbarController;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    return-void
.end method

.method public static synthetic lambda$addWindowLw$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .locals 0

    .line 317
    invoke-virtual {p1, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->addWindowLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic lambda$removeWindowLw$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .locals 0

    .line 341
    invoke-virtual {p1, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 278
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_3

    const/16 p2, 0x833

    if-eq v0, p2, :cond_2

    const/16 p2, 0x97e

    if-eq v0, p2, :cond_1

    const/16 p2, 0x97f

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 296
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 297
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p2, :cond_5

    .line 282
    iput-object p1, p2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.spay"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.rajaampat"

    .line 289
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 290
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 309
    :cond_5
    :goto_0
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 311
    invoke-virtual {p2}, Lcom/android/server/wm/PopOverState;->hasOptions()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 312
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/PopOverController;->addPopOverWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 314
    :cond_6
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz p2, :cond_7

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p2, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-static {p0, p2}, Lcom/android/server/wm/CustomLetterboxConfiguration;->performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V

    :cond_7
    return-void
.end method

.method public applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 185
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformController;->applyForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CoverPolicy;->applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 197
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LOCK_ONLY_LIVE_WALLPAPER:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa49

    if-ne v0, v3, :cond_4

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardWallpaperShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 204
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v2
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->getWakingUpReason()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 164
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x146a

    .line 167
    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 168
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    .line 173
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 174
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 177
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_2

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CoverPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->beginPostLayoutPolicyLw()V

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->beginPostLayoutPolicyLw()V

    :cond_1
    return-void
.end method

.method public canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 469
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 472
    invoke-interface {v1, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 476
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    return v2

    .line 479
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x833

    if-eq v0, v1, :cond_5

    const/16 v1, 0x96f

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa49

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 498
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_AOD_FACE_WIDGET:Z

    if-eqz v0, :cond_3

    return v2

    .line 504
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskbarController;->isTaskbar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 507
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p0

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 420
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    .line 418
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 424
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x988

    if-ne v1, v2, :cond_3

    return v0

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 429
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 433
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-boolean p2, p2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz p2, :cond_5

    return v0

    .line 438
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    .line 442
    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p2, p2, 0x20

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    return v1

    .line 452
    :cond_7
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_9

    move v0, v1

    :cond_9
    :goto_1
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 534
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicyExt"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPayHandlerWin="

    .line 539
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastPayHandlerVisible="

    .line 540
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLastPayHandlerFrame="

    .line 541
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "mNavigationMode="

    .line 542
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/CoverPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFakeFocusedWindow="

    .line 549
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 552
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_3

    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OneHandOpPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_3
    return-void
.end method

.method public finishPostLayoutPolicyLw()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->finishPostLayoutPolicyLw()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicy;->finishPostLayoutPolicyLw()V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 240
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    if-ne v1, v2, :cond_3

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    .line 244
    invoke-interface {v2, p0, v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySamsungPayInfo: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public finishScreenTurningOn()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 270
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->finishScreenTurningOn()V

    :cond_0
    return-void
.end method

.method public getCoverPolicy()Lcom/android/server/wm/CoverPolicy;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    return-object p0
.end method

.method public getFakeFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->needsForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingTranslucentNavigation(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 391
    invoke-static {p0, p1, v1, v1}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getTaskbarController()Lcom/android/server/wm/TaskbarController;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    return-object p0
.end method

.method public isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 459
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p1, 0x400000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGameToolsOverlayVisibleLw()Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGameToolsVisibleLw()Z
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImeBtnOnGestureAllowed(I)Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isImeBtnOnGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavigationGestureMode()Z
    .locals 0

    .line 375
    iget p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 402
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUsingTranslucentNavigation(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 407
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, -0x80000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final needsForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 398
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d6

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 355
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_1

    const v1, 0x11101c2

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    return-void
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_0

    .line 324
    iput-object v1, v0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    .line 328
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    .line 332
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3

    .line 335
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 338
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V

    .line 343
    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 345
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PopOverController;->removePopOverWindowLw(Lcom/android/server/wm/WindowState;)V

    :cond_5
    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->screenTurnedOff()V

    :cond_0
    return-void
.end method

.method public updateConfigurationAndScreenSizeDependentBehaviors(IIII)V
    .locals 1

    .line 514
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TspStateController;->setDefaultDisplaySizeDensity(IIII)V

    :cond_0
    return-void
.end method
