.class public Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
.super Ljava/lang/Object;
.source "CandidatePhaseMetric.java"


# instance fields
.field public mCandidateUid:I

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mIsPrimary:Z

.field public mProviderQueryStatus:I

.field public mQueryFinishTimeNanoseconds:J

.field public mQueryReturned:Z

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mStartQueryTimeNanoseconds:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    const-wide/16 v2, -0x1

    .line 46
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 48
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    .line 50
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 53
    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    .line 55
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 61
    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 63
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    .line 66
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public getCandidateUid()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    return p0
.end method

.method public getFrameworkException()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    return-object p0
.end method

.method public getProviderQueryStatus()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    return p0
.end method

.method public getQueryFinishTimeNanoseconds()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    return-wide v0
.end method

.method public getQueryLatencyMicroseconds()I
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    .line 104
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-object p0
.end method

.method public getServiceBeganTimeNanoseconds()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    return-wide v0
.end method

.method public getSessionIdProvider()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    return p0
.end method

.method public getStartQueryTimeNanoseconds()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    return-wide v0
.end method

.method public getTimestampFromReferenceStartMicroseconds(J)I
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-string p0, "CandidateProviderMetric"

    const-string p1, "The timestamp is before service started, falling back to default int"

    .line 119
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 122
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method public isHasException()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    return p0
.end method

.method public isQueryReturned()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    return p0
.end method

.method public setCandidateUid(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    return-void
.end method

.method public setFrameworkException(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    return-void
.end method

.method public setHasException(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    return-void
.end method

.method public setProviderQueryStatus(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    return-void
.end method

.method public setQueryFinishTimeNanoseconds(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    return-void
.end method

.method public setQueryReturned(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    return-void
.end method

.method public setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public setServiceBeganTimeNanoseconds(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    return-void
.end method

.method public setStartQueryTimeNanoseconds(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    return-void
.end method
