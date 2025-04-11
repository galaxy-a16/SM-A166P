.class public Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "DoubleClick.java"


# instance fields
.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    const-string v0, "input"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 39
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-object v0
.end method

.method public static getStringResId()I
    .locals 1

    .line 0
    const v0, 0x1040115

    return v0
.end method


# virtual methods
.method public final click(JJI)V
    .locals 14

    move-object v0, p0

    .line 60
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 63
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v2}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    .line 64
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v1, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v10, 0x0

    .line 66
    aget-object v1, v2, v4

    iget v11, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v12, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v13, 0x1

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    const/16 v2, 0x1002

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v2, 0x800000

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    move/from16 v2, p5

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 72
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 73
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 75
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 78
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public performCornerAction(I)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, v6

    move-wide v3, v6

    move v5, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(JJI)V

    const-wide/16 v0, 0x32

    add-long v3, v6, v0

    move-object v0, p0

    move-wide v1, v3

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(JJI)V

    :cond_0
    return-void
.end method
