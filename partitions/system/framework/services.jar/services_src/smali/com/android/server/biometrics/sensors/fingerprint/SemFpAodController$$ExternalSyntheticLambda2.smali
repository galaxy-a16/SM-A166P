.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

.field public final synthetic f$1:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->$r8$lambda$VG_tEcw6pq_akJi8p5qMRqXqUOY(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    return-void
.end method
