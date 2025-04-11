.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Landroid/util/Pair;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->$r8$lambda$SuVtDcJWGgRPoATAAe1hzTa_iXM(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;Ljava/lang/Long;Landroid/util/Pair;)V

    return-void
.end method
