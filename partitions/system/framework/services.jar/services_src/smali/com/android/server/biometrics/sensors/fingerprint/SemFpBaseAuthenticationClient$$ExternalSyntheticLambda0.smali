.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$3:I

    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$4:I

    iput-boolean p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Z

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$2:J

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$3:I

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$4:I

    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;->f$5:Z

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->$r8$lambda$eA4iQ9ivKj6VOiaSGMwStzFUKDA(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJIIZ)V

    return-void
.end method
