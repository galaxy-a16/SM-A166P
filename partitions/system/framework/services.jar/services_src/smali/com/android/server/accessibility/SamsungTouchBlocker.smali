.class public Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTouchBlocker.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlocking:Z

.field public mIsLastEventDown:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mTapDurationEnabled:Z

.field public mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTapDurationEnabled(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 29
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 42
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->start(Landroid/content/ContentResolver;)V

    .line 45
    iget-wide p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final offTapIgnore()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->destroy()V

    .line 160
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->stop()V

    .line 164
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    :cond_1
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 59
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez p2, :cond_3

    .line 69
    new-instance p2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    :goto_0
    return-void

    :cond_4
    const-string v1, "SamsungTouchBlocker"

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_1

    .line 83
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    .line 84
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    if-eqz v0, :cond_9

    const-string v0, "Touch Blocker is activated"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 88
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    goto :goto_1

    .line 95
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez v0, :cond_8

    .line 97
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 100
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 106
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_b

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_a

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inject this event : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_b
    return-void
.end method

.method public final onTapIgnore()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_2

    .line 117
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 149
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(FF)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    :cond_0
    return-void
.end method
