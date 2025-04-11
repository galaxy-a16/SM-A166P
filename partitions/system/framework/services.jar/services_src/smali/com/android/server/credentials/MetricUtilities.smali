.class public abstract Lcom/android/server/credentials/MetricUtilities;
.super Ljava/lang/Object;
.source "MetricUtilities.java"


# static fields
.field public static final DEFAULT_REPEATED_BOOL:[Z

.field public static final DEFAULT_REPEATED_INT_32:[I

.field public static final DEFAULT_REPEATED_STR:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_STR:[Ljava/lang/String;

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_BOOL:[Z

    return-void
.end method

.method public static generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHighlyUniqueInteger()I
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public static getMetricTimestampDifferenceMicroseconds(JJ)I
    .locals 5

    sub-long v0, p0, p2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    const-string v4, "MetricUtilities"

    if-lez v2, :cond_0

    const-string p0, "Input timestamps are too far apart and unsupported, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_1

    const-string p0, "The timestamps aren\'t in expected order, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static getPackageUid(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "MetricUtilities"

    const-string p1, "Couldn\'t find required uid"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    .locals 24

    const/16 v1, 0x29b

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getSessionIdProvider()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isQueryReturned()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumProviders()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMinProviderTimestampNanoseconds()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMaxProviderTimestampNanoseconds()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalQueryFailures()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsQuery()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsQuery()[I

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalAuthFailures()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsAuth()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsAuth()[I

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumAuthEntriesTapped()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isAuthReturned()Z

    move-result v23

    move/from16 v3, p1

    invoke-static/range {v1 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIII[Ljava/lang/String;[I[I[II[Ljava/lang/String;[I[Ljava/lang/String;[I[I[II[Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during total candidate metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetricUtilities"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    .locals 12

    const/16 v0, 0x29e

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getSessionIdProvider()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isHasException()Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderStatus()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isAuthReturned()Z

    move-result v11

    move v2, p1

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I[I[ILjava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate auth metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetricUtilities"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static logApiCalledCandidateGetMetric(Ljava/util/Map;I)V
    .locals 7

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v0

    const/16 v1, 0x29d

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v6

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate get metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetricUtilities"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 23

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v6, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [I

    new-array v9, v1, [I

    new-array v10, v1, [Z

    new-array v11, v1, [I

    new-array v13, v1, [I

    new-array v14, v1, [I

    new-array v12, v1, [I

    new-array v15, v1, [I

    new-array v5, v1, [I

    new-array v4, v1, [Ljava/lang/String;

    new-array v1, v1, [Z

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object/from16 v22, v1

    move/from16 v16, v2

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/server/credentials/ProviderSession;

    iget-object v3, v3, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v3

    move-object/from16 v17, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v1

    :cond_0
    if-nez v16, :cond_1

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isQueryReturned()Z

    move-result v16

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v18

    aput v18, v6, v2

    move/from16 v18, v1

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v7, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v8, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getProviderQueryStatus()I

    move-result v0

    aput v0, v9, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isHasException()Z

    move-result v0

    aput-boolean v0, v10, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getNumEntriesTotal()I

    move-result v0

    aput v0, v11, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v13, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    aput v0, v14, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v12, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v15, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v5, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isPrimary()Z

    move-result v0

    aput-boolean v0, v22, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x28c

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v21

    move v3, v1

    move-object v0, v4

    move/from16 v4, p1

    move-object v1, v5

    move/from16 v5, v16

    move-object/from16 v16, v15

    move-object v15, v1

    move-object/from16 v17, v0

    invoke-static/range {v2 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ[I[I[I[I[Z[I[I[I[I[I[I[Ljava/lang/String;Z[Ljava/lang/String;[II[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during candidate provider uid metric emit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetricUtilities"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 29

    move-object/from16 v0, p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [I

    new-array v1, v1, [I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v5

    aput v5, v15, v3

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getProviderUid()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x28d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdProvider()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenUid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v13

    sget-object v14, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v28

    move/from16 v4, p3

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v22, p2

    invoke-static/range {v2 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIIZ[IIIIII[I[II[I[I[Ljava/lang/String;[ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during final provider uid emit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetricUtilities"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    .locals 11

    const/16 v0, 0x28b

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCallerUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getSessionIdCaller()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCredentialServiceStartedTimeNanoseconds()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCountRequestClassType()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v10

    move v4, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIJI[Ljava/lang/String;[IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during initial metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetricUtilities"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 22

    move-object/from16 v0, p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [I

    new-array v1, v1, [I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v5

    aput v5, v15, v3

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getProviderUid()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x29c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdCaller()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v21

    move/from16 v4, p3

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, p2

    invoke-static/range {v2 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIZ[I[I[Ljava/lang/String;[ILjava/lang/String;[I[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during final no uid metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetricUtilities"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/16 v0, 0x29f

    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during simple v2 metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetricUtilities"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
