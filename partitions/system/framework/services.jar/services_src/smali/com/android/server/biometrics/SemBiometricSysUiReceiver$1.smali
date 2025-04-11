.class public Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;
.super Ljava/lang/Object;
.source "SemBiometricSysUiReceiver.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiReceiver;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDialogDismissed(I[B)V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onSysUiError(II)V

    return-void
.end method

.method public onEvent(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDialogAnimatedIn(Z)V

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onSystemEvent(I)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDeviceCredentialPressed()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTryAgainPressed(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onTryAgainPressed()V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onModalitySwitched(I)V

    :goto_0
    return-void
.end method
