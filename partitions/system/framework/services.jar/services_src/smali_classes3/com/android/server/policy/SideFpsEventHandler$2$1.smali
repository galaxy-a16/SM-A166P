.class public Lcom/android/server/policy/SideFpsEventHandler$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "SideFpsEventHandler.java"


# instance fields
.field public mStateRunnable:Ljava/lang/Runnable;

.field public final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$2;


# direct methods
.method public static synthetic $r8$lambda$ae5aMaM-Jgy5jEhS0Fc7aOWYZjo(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1;->lambda$onStateChanged$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$onStateChanged$0(I)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    return-void
.end method


# virtual methods
.method public onBiometricAction(I)V
    .locals 1

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBiometricAction "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SideFpsEventHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SideFpsEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    :cond_0
    if-nez p1, :cond_1

    .line 222
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    .line 229
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    const-string p1, "STATE_IDLE"

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$mdismissDialog(Lcom/android/server/policy/SideFpsEventHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    :goto_0
    return-void
.end method
