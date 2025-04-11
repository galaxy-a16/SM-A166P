.class public Lcom/android/server/biometrics/SemBiometricSysUiManager$1;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;
.source "SemBiometricSysUiManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public static synthetic $r8$lambda$1AL0RZ2kzoIdHR4Urmnfz04YrOU(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onEvent$2(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$F34AqE3n6lWmSC9KsOjMbRw4eos(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onError$0(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzAvkXUDs4ZQCIIoiUaVz44B41Q(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onSysUiDismissed$1(II[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$0(III)V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiErrorEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method private synthetic lambda$onEvent$2(III)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method private synthetic lambda$onSysUiDismissed$1(II[B)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiDismissedEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II[B)V

    return-void
.end method


# virtual methods
.method public onError(III)V
    .locals 2

    .line 589
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(III)V
    .locals 2

    .line 605
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSysUiDismissed(II[B)V
    .locals 2

    .line 597
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSysUiDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(II)V
    .locals 2

    .line 581
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiTouchEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    return-void
.end method
