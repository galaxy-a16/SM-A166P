.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput-wide p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$hP0BFaHyf6e-93Qe9B45TmTd-Xo(Lcom/android/server/biometrics/SemBioLoggingManager;J)V

    return-void
.end method
