.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$3:Z

    iput-object p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$3:Z

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->$r8$lambda$vkooMGhZPAKXrBF2lVe595SajYQ(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    return-void
.end method
