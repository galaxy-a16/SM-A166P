.class public Lcom/android/server/display/DisplayPowerController2$6;
.super Ljava/lang/Object;
.source "DisplayPowerController2.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController2;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 1666
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .line 1670
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmBrightnessAnimationEndRunnable(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmBrightnessAnimationEndRunnable(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    .line 1678
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1679
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$6;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
