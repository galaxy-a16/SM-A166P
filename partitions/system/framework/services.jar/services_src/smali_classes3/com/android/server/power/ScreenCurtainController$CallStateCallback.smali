.class public final Lcom/android/server/power/ScreenCurtainController$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "ScreenCurtainController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ScreenCurtainController;Lcom/android/server/power/ScreenCurtainController$CallStateCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v0}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmLock(Lcom/android/server/power/ScreenCurtainController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v3}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object v3

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 408
    invoke-virtual {v3, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 407
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmLastScreenCurtainDisabledReason(Lcom/android/server/power/ScreenCurtainController;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v2}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmLastCallState(Lcom/android/server/power/ScreenCurtainController;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$mscheduleAutoEnableScreenCurtain(Lcom/android/server/power/ScreenCurtainController;)V

    .line 416
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p0, p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fputmLastCallState(Lcom/android/server/power/ScreenCurtainController;I)V

    .line 417
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
