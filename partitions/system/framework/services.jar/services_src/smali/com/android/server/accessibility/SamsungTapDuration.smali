.class public Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTapDuration.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDownEvent:[Landroid/view/MotionEvent;

.field public final mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

.field public final mHandler:Landroid/os/Handler;

.field public mHoldingState:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mPolicyFlags:[I

.field public final mRawEvent:[Landroid/view/MotionEvent;

.field public mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDownEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungTapDuration;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRawEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHoldingState(Lcom/android/server/accessibility/SamsungTapDuration;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearMotionEvents(Lcom/android/server/accessibility/SamsungTapDuration;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monActionTap(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 28
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 29
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 30
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 38
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->start(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public final clearMotionEvents(I)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    .line 235
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public final createDurationProgress(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inject this event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungTapDuration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->destroy()V

    .line 208
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->stop()V

    .line 213
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    :cond_2
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    .line 177
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_d

    if-lt v1, v3, :cond_0

    goto/16 :goto_3

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/SamsungTapDuration;->createDurationProgress(I)V

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "SamsungTapDuration"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    if-eq v3, v6, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_3

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 148
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v1

    if-eqz p0, :cond_d

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->cancel()V

    goto/16 :goto_3

    .line 118
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v2, :cond_4

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    aput-object v3, v2, v1

    .line 124
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v2, v1

    .line 125
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, p2, v1

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    .line 129
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v1

    if-eqz p0, :cond_d

    .line 130
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setViewOnOff(Z)V

    goto/16 :goto_3

    .line 134
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_6

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_6
    :goto_0
    if-ge v7, v2, :cond_d

    .line 138
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 153
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_8

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string p1, "Finish checking if this tap is valid "

    .line 160
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    :goto_1
    if-ge v7, v4, :cond_d

    .line 165
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p1, p1, v7

    if-eqz p1, :cond_9

    .line 166
    invoke-virtual {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->cancel()V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 92
    :cond_a
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string v0, "Start checking if this tap is valid "

    .line 93
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    aput-object v1, v0, v7

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v0, v7

    .line 98
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, p2, v7

    .line 101
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {p2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p2, p1, v7}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    move p1, v7

    :goto_2
    if-ge p1, v4, :cond_c

    .line 107
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p2, p2, p1

    if-eqz p2, :cond_b

    .line 108
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setDurationTime(J)V

    .line 109
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->start()V

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 113
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v7

    if-eqz p0, :cond_d

    .line 114
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setViewOnOff(Z)V

    :cond_d
    :goto_3
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(FFI)V
    .locals 1

    const/4 v0, 0x3

    if-le p3, v0, :cond_0

    const-string p0, "SamsungTapDuration"

    const-string/jumbo p1, "setXY()_pointerId is invalid!!"

    .line 248
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, p3

    if-eqz p0, :cond_1

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->updateView(FF)V

    :cond_1
    return-void
.end method
