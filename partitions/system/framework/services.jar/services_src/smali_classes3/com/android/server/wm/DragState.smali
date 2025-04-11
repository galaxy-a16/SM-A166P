.class public Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field public final mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mAnimatedScale:F

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mAnimatorSet:Ljava/util/HashMap;

.field public mApplyAlpha:Z

.field public mCallingPackageName:Ljava/lang/String;

.field public mCenterPivotOffsetX:F

.field public mCenterPivotOffsetY:F

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentAlpha:F

.field public mCurrentX:F

.field public mCurrentY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragInProgressByRecents:Z

.field public mDragMoved:Z

.field public mDragResult:Z

.field public mDragSplitAppIconHasDrawable:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mIsObjectCapture:Z

.field public mIsUpdatingClipdata:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mMimeType:I

.field public mNeedAdjustPosition:Z

.field public mNotifiedWindows:Ljava/util/ArrayList;

.field public mObjectCaptureRect:Landroid/graphics/RectF;

.field public mOriginalAlpha:F

.field public mOriginalX:F

.field public mOriginalY:F

.field public mPid:I

.field public final mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public mScaleAnimSource:F

.field public mScaleAnimTarget:F

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mSourceX:F

.field public mSourceY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mTargetX:F

.field public mTargetY:F

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mToken:Landroid/os/IBinder;

.field public mTouchSource:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I


# direct methods
.method public static synthetic $r8$lambda$0VBV4ocllXT0Q9vxkHz1vZlaLyg(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createCancelAnimationLocked$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_hLNfybHYY8xiEDVIfUxwvzITU(Lcom/android/server/wm/DragState;FFZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TAxhJwrzIkOsPmPPcBxXHE4iv2U(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->lambda$cancelAnimatorAllLocked$4(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBkEDsqfsCF108n3JTon1xYtLjU(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$showInputSurface$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hRsPtGjju-YwNruGcx52BZywuV8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createReturnAnimationLocked$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqLSN3DB_ZKKFUmRfo2AIAe1_x8(Lcom/android/server/wm/DragState;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->lambda$endAnimator$5(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCenterPivotOffsetX(Lcom/android/server/wm/DragState;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCenterPivotOffsetY(Lcom/android/server/wm/DragState;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentAlpha(Lcom/android/server/wm/DragState;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNeedAdjustPosition(Lcom/android/server/wm/DragState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCenterPivotOffsetX(Lcom/android/server/wm/DragState;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCenterPivotOffsetY(Lcom/android/server/wm/DragState;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentAlpha(Lcom/android/server/wm/DragState;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNeedAdjustPosition(Lcom/android/server/wm/DragState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->calculateDistance(FFFF)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 5

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 146
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 182
    iput v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 199
    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 201
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 203
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 218
    iput v2, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 229
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 230
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 231
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 232
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 233
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 234
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 235
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 236
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 644
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    return-void
.end method

.method public static synthetic lambda$cancelAnimatorAllLocked$4(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1104
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManager"

    const-string v0, "Unable to cancel animator"

    .line 1108
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$createCancelAnimationLocked$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1096
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$createReturnAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1050
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$endAnimator$5(I)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1117
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
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

.method public static synthetic lambda$showInputSurface$0(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final adjustPosition(FI)F
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1214
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, v0

    if-nez p2, :cond_1

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1
    add-float/2addr p1, p0

    :cond_2
    return p1
.end method

.method public final adjustScale(F)F
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1224
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, p0

    :cond_1
    return p1
.end method

.method public broadcastDragStartedLocked(FF)V
    .locals 4

    .line 623
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 624
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 630
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 632
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 634
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 635
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 643
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final calculateDistance(FFFF)F
    .locals 2

    sub-float/2addr p1, p3

    .line 1567
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    .line 1566
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final calculateScale()V
    .locals 4

    .line 1123
    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    const/4 v1, 0x1

    const v2, 0x3f4ccccd    # 0.8f

    if-ne v0, v1, :cond_0

    .line 1124
    iput v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1125
    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    return-void

    .line 1129
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 1131
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0xc7

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v1, v2

    .line 1133
    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0x63

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v1, v2

    .line 1136
    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    :cond_2
    :goto_0
    return-void
.end method

.method public cancelAnimatorAllLocked()V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1111
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public cancelDragLocked(Z)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 828
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public closeLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    return-void
.end method

.method public closeLocked(Z)V
    .locals 22

    move-object/from16 v0, p0

    .line 301
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    const/4 v2, 0x1

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 303
    iput-boolean v2, v0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 305
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unregistering drag input channel"

    .line 307
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 312
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 317
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    const-string v1, "broadcasting DRAG_ENDED"

    .line 319
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 325
    iget-boolean v8, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    iget v9, v0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v8, v9, :cond_3

    .line 327
    iget v8, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v8

    .line 328
    iget v9, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v9

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 332
    iget-object v10, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move v12, v8

    move v13, v9

    move-object/from16 v19, v10

    goto :goto_1

    :cond_2
    move-object/from16 v19, v4

    move v12, v8

    move v13, v9

    goto :goto_1

    :cond_3
    move-object/from16 v19, v4

    move v12, v5

    move v13, v12

    :goto_1
    const/4 v11, 0x4

    .line 335
    iget v14, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    iget-boolean v8, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move/from16 v21, v8

    invoke-static/range {v11 .. v21}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 339
    :try_start_0
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 341
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to drag-end window "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_2
    sget v9, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    if-eq v9, v7, :cond_1

    .line 346
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 349
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 350
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 354
    :cond_5
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    if-eqz v1, :cond_6

    .line 355
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    .line 357
    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x2002

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 368
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v9, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FFZ)V

    .line 372
    iput v6, v0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 376
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_9

    .line 377
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 378
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 380
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_c

    .line 381
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 382
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_3

    .line 384
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v7, 0x1388

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v2, v7, v8}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 388
    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v1, :cond_b

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 391
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_b

    .line 392
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 396
    :cond_b
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 398
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-eqz v1, :cond_e

    :cond_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v1, :cond_f

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const-string v1, "Unexpectedly destroying mSurfaceControl while animation is running"

    .line 402
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_f
    iput v6, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 406
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 407
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 408
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 409
    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 410
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 413
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    return-void
.end method

.method public final containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "application/vnd.android.activity"

    .line 707
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/vnd.android.shortcut"

    .line 708
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/vnd.android.task"

    .line 709
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 1190
    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1189
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1192
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1193
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1194
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1195
    new-instance p2, Lcom/android/server/wm/DragState$AlphaAnimationListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/DragState$AlphaAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AlphaAnimationListener-IA;)V

    .line 1196
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1197
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 15

    .line 1056
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "alpha"

    const-string/jumbo v3, "scale"

    const-string/jumbo v4, "y"

    const-string/jumbo v5, "x"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_2

    new-array v10, v9, [F

    .line 1070
    iget v11, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v12, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v12, v11, v12

    iget v13, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v12, v13

    iget v14, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v12, v14

    aput v12, v10, v8

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    aput v11, v10, v7

    .line 1071
    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v10, v9, [F

    iget v11, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v12, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v12, v11, v12

    iget v13, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v12, v13

    iget v14, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v12, v14

    aput v12, v10, v8

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    aput v11, v10, v7

    .line 1074
    invoke-static {v4, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v10, v9, [F

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    aput v0, v10, v8

    aput v6, v10, v7

    .line 1077
    invoke-static {v3, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v9, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v9, v3, v8

    aput v6, v3, v7

    .line 1078
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v5, v4, v0, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v9, [F

    .line 1081
    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v11, v10, v11

    aput v11, v0, v8

    aput v10, v0, v7

    .line 1082
    invoke-static {v5, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v5, v9, [F

    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v11, v10, v11

    aput v11, v5, v8

    aput v10, v5, v7

    .line 1084
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    .line 1086
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v9, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v9, v5, v8

    aput v6, v5, v7

    .line 1087
    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v0, v4, v3, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1090
    :goto_1
    new-instance v2, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    const-wide/16 v3, 0xc3

    .line 1091
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1092
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1093
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1094
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1096
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final createCenteredScaleAnimator(FFFFJ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const-string/jumbo p2, "scale"

    .line 1160
    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, v0, [F

    aput p3, v0, v2

    aput p4, v0, p1

    const-string/jumbo p1, "pivot_offset"

    .line 1161
    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {p2, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1159
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1162
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1163
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final createClipDataWithContentsToWindowExtras(Landroid/content/ClipData;)Landroid/content/ClipData;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 951
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object p1

    .line 952
    iget v0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->setCallingUserId(I)V

    .line 953
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    return-object p1
.end method

.method public final createMoveAnimationLocked()V
    .locals 9

    .line 1245
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "skip createMoveAnimationLocked"

    .line 1246
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "createMoveAnimationLocked"

    .line 1249
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1252
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const-wide/16 v5, 0x96

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 1255
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1257
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1259
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createObjectReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 13

    const-string v0, "createObjectReleaseAnimationLocked"

    const-string v1, "WindowManager"

    .line 1573
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1576
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1579
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 1582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dragSurfaceWidth is wrong!!, width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    .line 1584
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1587
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    const-wide/16 v5, 0x15e

    .line 1589
    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1591
    new-instance v2, Lcom/android/server/wm/DragState$4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DragState$4;-><init>(Lcom/android/server/wm/DragState;)V

    .line 1600
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1601
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1602
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v3, v5

    sub-float v7, v2, v3

    .line 1606
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v3, v5

    sub-float v9, v2, v3

    .line 1608
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    const-wide/16 v11, 0x15e

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1612
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1616
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1617
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1619
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method

.method public final createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 1233
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    aput p1, v1, v2

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    const/4 p2, 0x1

    aput p1, v1, p2

    const-string/jumbo p1, "x"

    .line 1232
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, v0, [F

    .line 1235
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p3

    aput p3, v0, v2

    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p3

    aput p3, v0, p2

    const-string/jumbo p2, "y"

    .line 1234
    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1231
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1236
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1237
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1238
    new-instance p2, Lcom/android/server/wm/DragState$PositionAnimationListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/DragState$PositionAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$PositionAnimationListener-IA;)V

    .line 1239
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1240
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createPressAnimationLocked()V
    .locals 14

    const-string v0, "WindowManager"

    const-string v1, "createPressAnimationLocked"

    .line 1263
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1266
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 1269
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1271
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->calculateScale()V

    .line 1275
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float v5, v1, v4

    sub-float/2addr v3, v5

    .line 1276
    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float v6, v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    .line 1278
    iget v4, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    mul-float/2addr v1, v2

    sub-float v9, v4, v1

    iput v9, p0, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 1279
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    mul-float/2addr v5, v2

    sub-float v11, v1, v5

    iput v11, p0, Lcom/android/server/wm/DragState;->mTargetY:F

    add-float v8, v9, v3

    .line 1280
    iput v8, p0, Lcom/android/server/wm/DragState;->mSourceX:F

    add-float v10, v11, v6

    .line 1281
    iput v10, p0, Lcom/android/server/wm/DragState;->mSourceY:F

    const-wide/16 v12, 0x15e

    move-object v7, p0

    .line 1283
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1285
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 1289
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v2

    const-wide/16 v4, 0x15e

    .line 1288
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1290
    new-instance v2, Lcom/android/server/wm/DragState$ScaleAnimationListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/DragState$ScaleAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$ScaleAnimationListener-IA;)V

    .line 1291
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1292
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1293
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1297
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_0

    .line 1298
    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1300
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 12

    .line 1305
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createObjectReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "createReleaseAnimationLocked"

    .line 1310
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 1316
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 1322
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    const-wide/16 v2, 0x15e

    .line 1321
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 1323
    new-instance v0, Lcom/android/server/wm/DragState$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;)V

    .line 1332
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1333
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 1338
    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v1, v4

    mul-float v5, v4, v3

    sub-float/2addr v1, v5

    .line 1339
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    mul-float/2addr v0, v3

    sub-float/2addr v5, v0

    .line 1340
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    mul-float/2addr v4, v3

    sub-float v3, v0, v4

    sub-float v2, v5, v2

    sub-float v4, v3, v1

    const-wide/16 v10, 0x15e

    move-object v0, p0

    move v1, v5

    move-wide v5, v10

    .line 1341
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1345
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1349
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 1350
    iput-boolean v8, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v9
.end method

.method public final createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 15

    .line 998
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "alpha"

    const-string/jumbo v4, "scale"

    const-string/jumbo v5, "y"

    const-string/jumbo v6, "x"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_2

    new-array v10, v9, [F

    .line 1012
    iget v11, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v12, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v11, v12

    iget v13, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v13

    iget v14, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v11, v14

    aput v11, v10, v8

    iget v11, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    aput v11, v10, v7

    .line 1013
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v10, v9, [F

    iget v11, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v12, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v11, v12

    iget v13, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v13

    iget v14, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v11, v14

    aput v11, v10, v8

    iget v11, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    aput v11, v10, v7

    .line 1016
    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v10, v9, [F

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    aput v0, v10, v8

    aput v0, v10, v7

    .line 1019
    invoke-static {v4, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v4, v9, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v9, v4, v8

    div-float/2addr v9, v2

    aput v9, v4, v7

    .line 1020
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v6, v5, v0, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1012
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v9, [F

    .line 1024
    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v10, v11

    aput v10, v0, v8

    iget v10, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v10, v11

    aput v10, v0, v7

    .line 1025
    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v6, v9, [F

    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v10, v11

    aput v10, v6, v8

    iget v10, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v10, v11

    aput v10, v6, v7

    .line 1028
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    .line 1031
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v6, v9, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v9, v6, v8

    div-float/2addr v9, v2

    aput v9, v6, v7

    .line 1032
    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v0, v5, v4, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1036
    :goto_1
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v2, v3

    .line 1037
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 1039
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 1040
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v4

    add-int/2addr v5, v4

    int-to-double v4, v5

    .line 1041
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/16 v4, 0xc3

    add-long/2addr v2, v4

    .line 1044
    new-instance v4, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    .line 1045
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1046
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1047
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1048
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1050
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string/jumbo p1, "scale"

    .line 1203
    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1202
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1204
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1205
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final createUpdateClipDataAnimationLocked()V
    .locals 18

    move-object/from16 v7, p0

    const-string v0, "WindowManager"

    const-string v1, "createUpdateClipDataAnimationLocked"

    .line 1358
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1359
    iput-boolean v0, v7, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    .line 1360
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1361
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1362
    invoke-virtual {v7, v0}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v10

    const v1, 0x3f99999a    # 1.2f

    .line 1363
    invoke-virtual {v7, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v11

    const/4 v12, 0x0

    .line 1365
    iget-object v1, v7, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    iget-object v2, v7, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    .line 1368
    iget v1, v7, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1369
    iput v0, v7, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 1371
    :cond_0
    iget v1, v7, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v14

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x12c

    .line 1373
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v5, 0x12c

    const/4 v3, 0x0

    move v1, v10

    move v2, v11

    move v4, v13

    .line 1377
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1379
    new-instance v0, Lcom/android/server/wm/DragState$2;

    invoke-direct {v0, v7, v9}, Lcom/android/server/wm/DragState$2;-><init>(Lcom/android/server/wm/DragState;Landroid/animation/AnimatorSet;)V

    .line 1406
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1407
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move v1, v11

    move v2, v10

    move v3, v12

    move-object v10, v5

    move-wide/from16 v5, v16

    .line 1409
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1411
    new-instance v1, Lcom/android/server/wm/DragState$3;

    invoke-direct {v1, v7}, Lcom/android/server/wm/DragState$3;-><init>(Lcom/android/server/wm/DragState;)V

    .line 1436
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1437
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1439
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1440
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1442
    iget-object v0, v7, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endAnimator(I)V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endDragLocked()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 796
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_6

    .line 798
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_DISABLE_CANCEL_ANIMATION:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 802
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_6

    .line 806
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-eq v0, v1, :cond_4

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_5

    .line 808
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 811
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 815
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public getInputChannel()Landroid/view/InputChannel;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    :goto_0
    return-object p0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_0
    return-object p0
.end method

.method public final getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/internal/view/IDragAndDropPermissions;
    .locals 9

    if-eqz p1, :cond_0

    .line 958
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 964
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v6, v1, 0x3

    iget v7, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 967
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasThresholdArea(FF)Z
    .locals 5

    .line 1180
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v0

    .line 1181
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float v3, v2, v0

    iget p0, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float v4, p0, v0

    add-float/2addr v2, v0

    add-float/2addr p0, v0

    invoke-direct {v1, v3, v4, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1184
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public isAccessibilityDragDrop()Z
    .locals 0

    .line 1681
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimating()Z
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAnimationSet()Z
    .locals 2

    .line 1169
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1170
    iget p0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isClosing()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return p0
.end method

.method public final isFromSource(I)Z
    .locals 0

    .line 1625
    iget p0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    return v0

    .line 723
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    .line 726
    :cond_3
    iget p2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    if-nez v1, :cond_5

    return v0

    :cond_5
    if-eqz p3, :cond_6

    .line 734
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 735
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-eq p2, v1, :cond_6

    return v0

    :cond_6
    if-nez p3, :cond_7

    .line 740
    iget-boolean p2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez p2, :cond_7

    iget p0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 742
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_8

    :cond_7
    move v0, v3

    :cond_8
    return v0
.end method

.method public isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 784
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDownEventLocked()V
    .locals 1

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "WindowManager"

    const-string/jumbo v0, "notifyDownEventLocked(), isAnimating() is true"

    .line 1142
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1146
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createPressAnimationLocked()V

    :cond_1
    return-void
.end method

.method public notifyLocationToEavesdropDragEventWindowLocked(FF)V
    .locals 11

    const-string v0, "WindowManager"

    .line 973
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowEavesdropDragEvent()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 974
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending DRAG_LOCATION to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v6, p1

    move v7, p2

    .line 984
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    const/4 p1, 0x1

    .line 985
    invoke-virtual {p0, p1}, Landroid/view/DragEvent;->setEavesDrop(Z)V

    .line 986
    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1, p0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 987
    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, p1, :cond_1

    .line 988
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "can\'t send drag notification to a window eavesdropping dragEvent"

    .line 991
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyUpdateClipDataLocked()V
    .locals 2

    const-string v0, "WindowManager"

    const-string/jumbo v1, "notifyUpdateClipDataLocked(), isAnimating() is true"

    .line 1153
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createUpdateClipDataAnimationLocked()V

    return-void
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .locals 11

    move-object v0, p0

    .line 929
    iget v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    if-eqz p5, :cond_0

    .line 931
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    const/4 v10, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v7, p4

    move-object/from16 v9, p6

    .line 929
    invoke-static/range {v0 .. v10}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public final obtainDragStartedEvent(Lcom/android/server/wm/WindowState;FFZ)Landroid/view/DragEvent;
    .locals 7

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    .line 939
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 940
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DragState;->createClipDataWithContentsToWindowExtras(Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v4

    const/4 v5, 0x1

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 939
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 943
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public overridePointerIconLocked(I)V
    .locals 0

    .line 1629
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    const/16 p1, 0x2002

    .line 1630
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1631
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p0

    const/16 p1, 0x3fd

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->setPointerIconType(I)V

    :cond_0
    return-void
.end method

.method public register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string/jumbo v0, "registering drag input channel"

    const-string v1, "WindowManager"

    .line 610
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_0

    const-string p0, "Duplicate register of drag input channel"

    .line 612
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 613
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 615
    :cond_0
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->showInputSurface()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final relinquishDragSurfaceToDragSource()Z
    .locals 0

    .line 1685
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .locals 12

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const-string v2, "WindowManager"

    if-nez v0, :cond_1

    .line 474
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drop outside a valid window "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending DROP to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 485
    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_2

    .line 487
    new-instance v11, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v6, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 490
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v8, v3, 0xc3

    iget v9, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v3, v11

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    move-object v9, v11

    .line 497
    iget v3, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v3, v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->fixUris(I)V

    .line 502
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v4, 0x3

    .line 503
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    move-object v3, p0

    move v5, p2

    move v6, p3

    .line 503
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p2

    .line 507
    :try_start_0
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 510
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v3, 0x1388

    invoke-virtual {p3, v1, v0, v3, v4}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_4

    .line 518
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 521
    :cond_4
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 513
    :catch_0
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t send drop notification to win "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_5

    .line 518
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    :cond_5
    return v1

    .line 517
    :goto_1
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_6

    .line 518
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 520
    :cond_6
    throw p0
.end method

.method public restartDragLocked(Landroid/content/ClipData;)V
    .locals 9

    .line 418
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 420
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 424
    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->createClipDataWithContentsToWindowExtras(Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x1

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v8

    move-object v2, p0

    .line 424
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 428
    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v1

    .line 433
    :goto_2
    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 434
    invoke-virtual {v1, v2}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    .line 438
    :cond_3
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchDragEventUpdated(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v0, :cond_1

    .line 444
    :goto_3
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    :try_start_1
    const-string v2, "WindowManager"

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-restart window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v0, :cond_1

    goto :goto_3

    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq p1, v0, :cond_4

    .line 444
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 446
    :cond_4
    throw p0

    :cond_5
    return-void
.end method

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 8

    .line 767
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "need to send DRAG_STARTED to new window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    .line 775
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V

    :cond_1
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 659
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V

    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V
    .locals 2

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 666
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result p4

    if-eqz p4, :cond_3

    if-eqz v0, :cond_0

    .line 668
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {p4}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    .line 672
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result p2

    .line 673
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p3

    .line 672
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DragState;->obtainDragStartedEvent(Lcom/android/server/wm/WindowState;FFZ)Landroid/view/DragEvent;

    move-result-object p2

    if-eqz p5, :cond_1

    .line 681
    iget p3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 682
    invoke-virtual {p2, p3}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    .line 686
    :cond_1
    :try_start_0
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 688
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_3

    .line 694
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "WindowManager"

    .line 690
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to drag-start window "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_3

    goto :goto_0

    :goto_1
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_2

    .line 694
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 696
    :cond_2
    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public setDragSplitAppIconHasDrawable(Z)V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    if-eq v0, p1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 529
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    :cond_1
    return-void
.end method

.method public final showInputSurface()Ljava/util/concurrent/CompletableFuture;
    .locals 7

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Drag and Drop Input Consumer"

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "DragState.showInputSurface"

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 252
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "WindowManager"

    const-string v0, "Drag is in progress but there is no drag window handle."

    .line 257
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 259
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 266
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 274
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 281
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 282
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 283
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-object v0
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 756
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 748
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateDragSurfaceLocked(ZFF)V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 854
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    if-eqz v0, :cond_3

    .line 857
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 858
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    const-string p0, "WindowManager"

    const-string/jumbo p1, "skip createMoveAnimation"

    .line 859
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 863
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DragState;->hasThresholdArea(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 866
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 869
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    if-eqz v0, :cond_5

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 871
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 872
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v0, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createMoveAnimationLocked()V

    .line 874
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    goto :goto_0

    .line 876
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    if-nez v0, :cond_7

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 881
    :cond_7
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-nez v0, :cond_8

    .line 882
    iget v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    goto :goto_1

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 885
    :goto_1
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 886
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    if-nez p1, :cond_9

    return-void

    .line 898
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 899
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 902
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v1, v0

    sub-float v1, p2, v1

    iget v2, p1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 903
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v3, v0

    sub-float v0, p3, v3

    mul-float/2addr v0, v2

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_2

    .line 907
    :cond_a
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz p1, :cond_b

    .line 908
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v2, v0

    sub-float v2, p2, v2

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v3, v0

    sub-float v0, p3, v3

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_2

    .line 912
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p3, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 915
    :cond_c
    :goto_2
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-long v0, p2

    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr p3, p0

    float-to-int p0, p3

    int-to-long p2, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x14698a26

    const/16 p3, 0x14

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void

    .line 839
    :cond_e
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    if-eqz p1, :cond_f

    .line 840
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 841
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 843
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    .line 844
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v2, v3

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    .line 845
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p2

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    .line 846
    invoke-virtual {p0, p3, v1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p0

    .line 844
    invoke-virtual {p1, v0, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 846
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_f
    return-void
.end method
