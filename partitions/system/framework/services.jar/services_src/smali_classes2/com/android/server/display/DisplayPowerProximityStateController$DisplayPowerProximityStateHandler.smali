.class public Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;
.super Landroid/os/Handler;
.source "DisplayPowerProximityStateController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerProximityStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V
    .locals 1

    .line 544
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 545
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 550
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->ignoreProximitySensorUntilChangedInternal()V

    goto :goto_0

    .line 552
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerProximityStateController;)V

    :goto_0
    return-void
.end method
