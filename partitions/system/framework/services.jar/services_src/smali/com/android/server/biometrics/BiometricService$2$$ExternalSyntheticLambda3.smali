.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$1:J

    iput-boolean p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$1:J

    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/BiometricService$2;->$r8$lambda$VQ2z1a3xvkEwb0J8_eSCE3GhabQ(Lcom/android/server/biometrics/BiometricService$2;JZ)V

    return-void
.end method
