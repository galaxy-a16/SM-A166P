.class public Lcom/android/server/accessibility/KeyboardInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "KeyboardInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public final mHandler:Landroid/os/Handler;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 50
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addEventToQueue(Landroid/view/KeyEvent;IJ)V
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 104
    iget-object p3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez p3, :cond_0

    .line 106
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    return-void

    .line 110
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object p2, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 112
    iput-object p1, p2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 113
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    return-void
.end method

.method public final getEventDelay(Landroid/view/KeyEvent;I)J
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    .line 151
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 91
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "KeyboardInterceptor"

    const-string p1, "Unexpected message type"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->processQueuedEvents()V

    .line 96
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    :cond_1
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyboardInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    if-gtz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    return-void

    .line 82
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor;->addEventToQueue(Landroid/view/KeyEvent;IJ)V

    return-void
.end method

.method public final processQueuedEvents()V
    .locals 6

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 125
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_4

    iget-wide v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_4

    .line 126
    iget-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget v2, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    return-void

    :cond_1
    if-nez v4, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v4, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget v3, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 137
    iget-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 139
    iput-object v4, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 141
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->recycle()V

    .line 142
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v2, :cond_0

    .line 143
    iput-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final scheduleProcessQueuedEvents()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-wide v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "KeyboardInterceptor"

    const-string v0, "Failed to schedule key event"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
