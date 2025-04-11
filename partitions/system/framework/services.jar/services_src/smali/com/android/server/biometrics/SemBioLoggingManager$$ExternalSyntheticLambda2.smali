.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$4:I

    iput p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$4:I

    iget v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$5:I

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$yROKQliH-iM5NK75fQ0RQHK3I_I(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    return-void
.end method
