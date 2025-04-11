.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static SEC_DEBUG:Z = false


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

.field public mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

.field public mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastActivatedScale:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowTypingEnabled:Z

.field public mReceiverRegistered:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public mWindowMagnifiers:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetWindowMagnifiers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScaleInternal(IF)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 135
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLastActivatedScale:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 158
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    .line 223
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    .line 224
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 225
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DISCONNECTED"

    return-object p0

    :cond_1
    const-string p0, "DISCONNECTING"

    return-object p0

    :cond_2
    const-string p0, "CONNECTED"

    return-object p0

    :cond_3
    const-string p0, "CONNECTING"

    return-object p0
.end method


# virtual methods
.method public final createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .locals 1

    .line 966
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    .line 967
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public disableAllWindowMagnifiers()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 385
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v3, 0x0

    .line 387
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 390
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disableWindowMagnification(IZ)Z
    .locals 1

    .line 677
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 697
    monitor-exit v0

    return v2

    .line 700
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p3

    if-eqz p2, :cond_1

    .line 702
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 704
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 707
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {p2, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 711
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_am_magnification_mode"

    const/4 v0, -0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 713
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_am_magnification_mode"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationMgr"

    .line 718
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return p3

    :catchall_0
    move-exception p0

    .line 704
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 1344
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez p0, :cond_0

    const-string p0, "WindowMagnificationMgr"

    const-string/jumbo p1, "mConnectionWrapper is null"

    .line 1345
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1348
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final enableAllTrackingTypingFocus()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 499
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v3, 0x1

    .line 501
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enableWindowMagnification(IFFF)Z
    .locals 7

    .line 582
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFI)Z
    .locals 8

    .line 621
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 602
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 11

    move-object v0, p0

    move v1, p1

    .line 644
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 645
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez v3, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v3

    :cond_0
    move-object v4, v3

    .line 649
    invoke-static {v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v3

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 650
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 658
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    if-nez v3, :cond_2

    .line 660
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_2
    return v4

    :catchall_0
    move-exception v0

    .line 655
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 15

    move-object v0, p0

    .line 1314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 1315
    sget-boolean v3, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    const-string v4, "WindowMagnificationMgr"

    if-eqz v3, :cond_0

    .line 1316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mConnectionState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :catch_0
    :cond_0
    :goto_0
    iget v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_1

    .line 1320
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v7, :cond_2

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 1328
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    .line 1331
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public getBounds(I)Landroid/graphics/Rect;
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 830
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 833
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCenterX(I)F
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 908
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    .line 909
    :cond_1
    :goto_0
    monitor-exit v0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :catchall_0
    move-exception p0

    .line 912
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCenterY(I)F
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 924
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    .line 925
    :cond_1
    :goto_0
    monitor-exit v0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :catchall_0
    move-exception p0

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 0

    .line 369
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_0

    .line 465
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 467
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLastActivatedScale(I)F
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    monitor-exit v0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 815
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 816
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 951
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 952
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 956
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPersistedScale(I)F
    .locals 1

    .line 774
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 803
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    .line 804
    :cond_1
    :goto_0
    monitor-exit v0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :catchall_0
    move-exception p0

    .line 807
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnected()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImeVisible(I)Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 536
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPositionInSourceBounds(IFF)Z
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 747
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled(I)Z
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 935
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isWindowMagnifierEnabled(I)Z
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 760
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 763
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logTrackingTypingFocus(J)V
    .locals 0

    .line 540
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationFollowTypingFocusSession(J)V

    return-void
.end method

.method public moveWindowMagnification(IFF)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 853
    monitor-exit v0

    return-void

    .line 855
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->move(FF)V

    .line 856
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final moveWindowMagnifierInternal(IFF)Z
    .locals 0

    .line 1354
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 1361
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableAllTrackingTypingFocus()V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->pauseTrackingTypingFocusRecord(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 437
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 438
    :try_start_0
    iget-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isPositionInSourceBounds(IFF)Z

    move-result p5

    if-nez p5, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isTrackingTypingFocusEnabled(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 441
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 444
    :cond_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pauseTrackingTypingFocusRecord(I)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 511
    monitor-exit v0

    return-void

    .line 513
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    return-void

    :catchall_0
    move-exception p0

    .line 513
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public persistScale(I)V
    .locals 2

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return-void

    .line 791
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    return-void
.end method

.method public pointersInWindow(ILandroid/view/MotionEvent;)I
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 735
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 737
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 738
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processScroll(IFF)Z
    .locals 0

    neg-float p2, p2

    neg-float p3, p3

    .line 545
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnification(IFF)V

    const/4 p2, 0x0

    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeMagnificationButton(I)Z
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 882
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 883
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMagnificationSettingsPanel(I)Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 895
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->removeMagnificationSettingsPanel(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 896
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestConnection(Z)Z
    .locals 8

    const-string v0, "WindowMagnificationMgr"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnectionState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowMagnificationMgr.requestWindowMagnificationConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 313
    :try_start_0
    iget v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v4, v2, :cond_2

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/4 v4, 0x2

    if-nez p1, :cond_4

    iget v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v5, v1, :cond_2

    if-ne v5, v4, :cond_4

    :cond_2
    const-string v2, "WindowMagnificationMgr"

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestConnection duplicated request: connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 317
    invoke-static {v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 319
    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-nez v2, :cond_3

    const-string v2, "WindowMagnificationMgr"

    const-string v4, "Connection failed, requestConnection again"

    .line 320
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnection(Z)Z

    .line 325
    :cond_3
    monitor-exit v0

    return v3

    :cond_4
    if-eqz p1, :cond_5

    .line 329
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-nez v6, :cond_6

    .line 331
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    .line 336
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-eqz v5, :cond_6

    .line 337
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 341
    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnectionInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    .line 343
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return v2

    .line 346
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return v3

    .line 341
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final requestConnectionInternal(Z)Z
    .locals 2

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    :try_start_0
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_0

    .line 357
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestWindowMagnificationConnection(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw p0
.end method

.method public resetAllIfNeeded(I)V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 402
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz v2, :cond_0

    .line 404
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    .line 407
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetWindowMagnifiers()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 415
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 417
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 6

    .line 234
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowMagnificationMgr"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 236
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 241
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 242
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_1

    .line 243
    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)V

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 246
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 251
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 256
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 261
    :try_start_1
    new-instance p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {p1, p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 262
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 263
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    const-string v1, "WindowMagnificationMgr"

    const-string/jumbo v2, "setConnection failed"

    .line 266
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 271
    throw p1

    .line 274
    :cond_4
    sget-boolean p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "WindowMagnificationMgr"

    const-string/jumbo v1, "mConnectionWrapper is null, setConnectionState(DISCONNECTED)"

    .line 275
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 280
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final setConnectionState(I)V
    .locals 2

    .line 373
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConnectionState : state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 375
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMagnificationMgr"

    .line 374
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setScale(IF)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez v1, :cond_0

    .line 561
    monitor-exit v0

    return-void

    .line 563
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setScale(F)V

    .line 564
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setScaleInternal(IF)Z
    .locals 0

    .line 1338
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setScale(IF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSecDebug(Z)V
    .locals 0

    .line 424
    sput-boolean p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    return-void
.end method

.method public setTrackingTypingFocusEnabled(IZ)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 488
    monitor-exit v0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 491
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showMagnificationButton(II)Z
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 868
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 870
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
