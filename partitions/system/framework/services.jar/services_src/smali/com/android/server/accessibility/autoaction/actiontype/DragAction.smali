.class public Lcom/android/server/accessibility/autoaction/actiontype/DragAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "DragAction.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DragAction"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFirstEvent:Landroid/view/MotionEvent;

.field public mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mSecondEvent:Landroid/view/MotionEvent;

.field public mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFirstEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirstPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdragAndDrop(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->dragAndDrop(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/DragAction;
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x1040117

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Swipe Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x1040116

    return p0
.end method


# virtual methods
.method public final dragAndDrop(I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    filled-new-array {v2}, [Landroid/view/MotionEvent$PointerProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v3, v4, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/hardware/input/InputManager;

    if-nez v15, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    move-wide v4, v12

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v9, 0x1002

    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v8, 0x800000

    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v7, 0x2

    invoke-virtual {v15, v2, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "drag"

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v14

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    :goto_0
    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v2}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v16

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v14

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v14

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v3, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float v17, v3, v6

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v2, v3

    div-float v18, v2, v6

    aget-object v2, v16, v14

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move v6, v14

    :goto_1
    const/16 v2, 0x14

    const/16 v3, 0xf

    if-ge v6, v2, :cond_2

    aget-object v2, v16, v14

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v4, v4, v17

    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v5, v5, v18

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-long v2, v3

    add-long/2addr v12, v2

    const/16 v19, 0x2

    const/16 v20, 0x1

    move-wide v2, v10

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide v4, v12

    move/from16 v23, v6

    move/from16 v6, v19

    move v14, v7

    move/from16 v7, v21

    move v14, v8

    move/from16 v8, v22

    move v14, v9

    move/from16 v9, v20

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v3, 0x2

    invoke-virtual {v15, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v6, v23, 0x1

    move v9, v14

    const/4 v7, 0x2

    const/high16 v8, 0x800000

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    move v14, v9

    int-to-long v2, v3

    add-long v4, v12, v2

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v1, 0x2

    invoke-virtual {v15, v0, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public performCornerAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    return-void
.end method
