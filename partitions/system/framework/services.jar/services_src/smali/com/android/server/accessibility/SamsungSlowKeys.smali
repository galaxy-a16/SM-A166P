.class public Lcom/android/server/accessibility/SamsungSlowKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungSlowKeys.java"


# instance fields
.field public mCurrentKeyCode:I

.field public mCurrentKeyEvent:Landroid/view/KeyEvent;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyEventFinished:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mPolicyFlags:I

.field public mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

.field public mSlowKeysPeriodMilli:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungSlowKeys;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSlowKeysPeriodMilli(Lcom/android/server/accessibility/SamsungSlowKeys;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungSlowKeys;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 31
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungSlowKeys$1;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->start(Landroid/content/ContentResolver;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mKeyEventFinished:Z

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyCode:I

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public final debugLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SamsungSlowKeys"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->stop()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 4

    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mKeyEventFinished:Z

    if-eqz v0, :cond_1

    .line 68
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyCode:I

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mKeyEventFinished:Z

    .line 71
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    .line 72
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 75
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_3

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 82
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mKeyEventFinished:Z

    return-void

    .line 60
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_5

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_5
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 102
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
