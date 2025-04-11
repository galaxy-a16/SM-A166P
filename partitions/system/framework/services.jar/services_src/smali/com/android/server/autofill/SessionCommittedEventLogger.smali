.class public final Lcom/android/server/autofill/SessionCommittedEventLogger;
.super Ljava/lang/Object;
.source "SessionCommittedEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$5lfUx-B9dM_3_ivD70MgQYImhXI(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetSessionDurationMillis$3(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PAsOsv-kjf_6wJWqXKaYNNxc1A(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetComponentPackageUid$0(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EXGxMYfVG8q3fP_q4LxT4hXZ8ls(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetCommitReason$2(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVUyCvnpkpJlZUlVXkFZHHUaOQ4(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetRequestCount$1(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    .line 48
    new-instance p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    invoke-direct {p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/SessionCommittedEventLogger;
    .locals 1

    .line 55
    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/SessionCommittedEventLogger;-><init>(I)V

    return-object v0
.end method

.method public static synthetic lambda$maybeSetCommitReason$2(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 81
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    return-void
.end method

.method public static synthetic lambda$maybeSetComponentPackageUid$0(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 63
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    return-void
.end method

.method public static synthetic lambda$maybeSetRequestCount$1(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 72
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    return-void
.end method

.method public static synthetic lambda$maybeSetSessionDurationMillis$3(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 90
    iput-wide p0, p2, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 11

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SessionCommittedEventLogger"

    if-nez v0, :cond_0

    const-string p0, "Shouldn\'t be logging AutofillSessionCommitted again for same session."

    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 103
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillSessionCommitted: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mComponentPackageUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCommitReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSessionDurationMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0x25f

    .line 111
    iget v4, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    iget v5, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    iget v1, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    int-to-long v6, v1

    iget v8, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    iget-wide v9, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJ)V

    .line 118
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetCommitReason(I)V
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetComponentPackageUid(I)V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestCount(I)V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSessionDurationMillis(J)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
