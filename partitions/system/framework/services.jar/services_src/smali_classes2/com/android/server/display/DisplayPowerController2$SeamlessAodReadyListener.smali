.class public final Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;
.super Ljava/lang/Object;
.source "DisplayPowerController2.java"

# interfaces
.implements Lcom/samsung/android/aod/AODManager$AODChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController2;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 4778
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    return-void
.end method


# virtual methods
.method public readyToScreenTurningOn()V
    .locals 2

    .line 4782
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[api] AODManager.AODChangeListener : Received readyToScreenTurningOn()."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4785
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4786
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
