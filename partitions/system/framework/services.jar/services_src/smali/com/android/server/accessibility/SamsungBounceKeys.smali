.class public Lcom/android/server/accessibility/SamsungBounceKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungBounceKeys.java"


# instance fields
.field public mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

.field public mBounceKeysPeriodMilli:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlocking:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mOldKeyCode:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmBounceKeysPeriodMilli(Lcom/android/server/accessibility/SamsungBounceKeys;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungBounceKeys;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/SamsungBounceKeys$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungBounceKeys$1;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    new-instance v1, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->start(Landroid/content/ContentResolver;)V

    const/4 p1, 0x0

    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsBlocking : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOldKeyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungBounceKeys"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x18

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    if-ne v2, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "BounceKeys is activated"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_5
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
