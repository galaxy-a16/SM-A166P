.class public Lcom/android/server/accessibility/SamsungTapDuration$1;
.super Landroid/os/Handler;
.source "SamsungTapDuration.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    const-string v2, "SamsungTapDuration"

    if-ge v0, v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->end()V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDownEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDownEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDownEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmRawEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v5}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungTapDuration;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$monActionTap(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v1, "idBits did not match any ids in the event"

    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$mclearMotionEvents(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$mclearMotionEvents(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    .line 57
    throw p1

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Tap is valid"

    .line 60
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fputmHoldingState(Lcom/android/server/accessibility/SamsungTapDuration;Z)V

    return-void

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkwown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
