.class public Lcom/android/server/credentials/metrics/InitialPhaseMetric;
.super Ljava/lang/Object;
.source "InitialPhaseMetric.java"


# instance fields
.field public mApiName:I

.field public mCallerUid:I

.field public mCredentialServiceBeginQueryTimeNanoseconds:J

.field public mCredentialServiceStartedTimeNanoseconds:J

.field public mOriginSpecified:Z

.field public mRequestCounts:Ljava/util/Map;

.field public final mSessionIdCaller:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    .line 44
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceBeginQueryTimeNanoseconds:J

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 54
    iput p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    return-void
.end method


# virtual methods
.method public getApiName()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    return p0
.end method

.method public getCallerUid()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    return p0
.end method

.method public getCountRequestClassType()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getCredentialServiceStartedTimeNanoseconds()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    return-wide v0
.end method

.method public getSessionIdCaller()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    return p0
.end method

.method public getUniqueRequestCounts()[I
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getUniqueRequestStrings()[Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    iget-object p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public isOriginSpecified()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    return p0
.end method

.method public setApiName(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    return-void
.end method

.method public setCallerUid(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    return-void
.end method

.method public setCredentialServiceBeginQueryTimeNanoseconds(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceBeginQueryTimeNanoseconds:J

    return-void
.end method

.method public setCredentialServiceStartedTimeNanoseconds(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    return-void
.end method

.method public setOriginSpecified(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    return-void
.end method

.method public setRequestCounts(Ljava/util/Map;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    return-void
.end method
