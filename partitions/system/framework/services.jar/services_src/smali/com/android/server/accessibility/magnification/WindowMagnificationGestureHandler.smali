.class public Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "WindowMagnificationGestureHandler.java"


# static fields
.field public static final DEBUG_DETECTING:Z

.field public static final DEBUG_STATE_TRANSITIONS:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field final mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

.field final mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

.field public mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

.field final mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

.field mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field public final mTempPoint:Landroid/graphics/Point;

.field public mTripleTapAndHoldStartedTime:J

.field final mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

.field public final mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method public static synthetic $r8$lambda$s91Xtd5_AkEYLwOr8-mhnL9UhBA(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->lambda$new$0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnificationMgr(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misScreenReaderEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->isScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monTripleTap(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_DETECTING()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 80
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v1, v0, 0x0

    sput-boolean v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    or-int/lit8 v0, v0, 0x0

    .line 81
    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V
    .locals 6

    move-object v0, p0

    move v1, p7

    move v2, p5

    move v3, p6

    move-object v4, p3

    move-object v5, p4

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    .line 104
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    const-wide/16 p3, 0x0

    .line 106
    iput-wide p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 114
    sget-boolean p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz p3, :cond_0

    .line 115
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "WindowMagnificationGestureHandler() , displayId = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 120
    new-instance p2, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    invoke-direct {p2, p1, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 123
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-direct {p3, p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 124
    new-instance p2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    iget-boolean p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 125
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 126
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    new-instance p4, Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    new-instance v5, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    move-object v0, p4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;-><init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V

    invoke-direct {p3, p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/PanningScalingHandler;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final disableWindowMagnifier()V
    .locals 2

    .line 216
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string v1, "disableWindowMagnifier()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public final enableWindowMagnifier(FFI)V
    .locals 9

    .line 204
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWindowMagnifier :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getPersistedScale(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    .line 209
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 211
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFI)Z

    return-void
.end method

.method public getMode()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public final getScreenSize(Landroid/graphics/Point;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public handleShortcutTriggered()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->getScreenSize(Landroid/graphics/Point;)V

    .line 179
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FFI)V

    return-void
.end method

.method public final isScreenReaderEnabled()Z
    .locals 1

    .line 619
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 620
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 621
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public logMagnificationTripleTapAndHoldSession(J)V
    .locals 0

    .line 297
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTapAndHoldSession(J)V

    return-void
.end method

.method public magnificationDisactivate()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 167
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(); delayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 169
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    return-void
.end method

.method public onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->-$$Nest$fgetmPanningScalingHandler(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;)Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 154
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onTripleTap(Landroid/view/MotionEvent;)V
    .locals 2

    .line 253
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTap()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FFI)V

    .line 259
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const-string p1, "A11Y9004"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTripleTapAndHold(Landroid/view/MotionEvent;)V
    .locals 3

    .line 265
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTapAndHold()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 269
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mEnabledBeforeDrag:Z

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 273
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public releaseTripleTapAndHold()V
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mEnabledBeforeDrag:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 282
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    sub-long/2addr v0, v4

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->logMagnificationTripleTapAndHoldSession(J)V

    .line 285
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    :cond_1
    return-void
.end method

.method public resetToDetectState()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowMagnificationGestureHandler{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 610
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 611
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowMagnificationMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toggleMagnification(FFI)V
    .locals 7

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    const-string/jumbo v1, "status"

    const-string v2, "com.samsung.accessibility.action.GET_MAGNFICATION_STATUS"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_am_magnification_mode"

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    .line 230
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    .line 241
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 242
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 247
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const-string p1, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .locals 6

    .line 332
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-static {v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 335
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onExit()V

    .line 342
    :cond_1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz p1, :cond_2

    .line 344
    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onEnter()V

    :cond_2
    return-void
.end method
