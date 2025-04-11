.class public Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SecurityScanner"

.field public static final UNIQUE_WORK_NAME:Ljava/lang/String; = "kmx-service|security-scanner"

.field private static sCntSyncFail:I

.field private static sTimestampLatestSucceed:J


# instance fields
.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

.field private final mWorkerParams:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mWorkerParams:Landroidx/work/WorkerParameters;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method public static activeScanning()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->checkSecurityStatus()Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "TrustChain::SecurityScanner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getIllegalSecurityStatus()Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->conditionalWriteDashboardInfo(Ljava/lang/String;)V

    return-void
.end method

.method private static checkSecurityStatus()Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;
    .locals 2

    const-string v0, "TrustChain::SecurityScanner"

    const-string v1, "check device integrity by attestation "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->getInstance()Lcom/samsung/android/kmxservice/common/util/SksAttestation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->getDeviceIntegrity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;-><init>(I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "fail to get device integrity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private conditionalSyncChain()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sTimestampLatestSucceed:J

    const-wide/32 v4, 0x1ee62800

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const-string v3, "TrustChain::SecurityScanner"

    if-gez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Not enough time took after latest succeed, "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sTimestampLatestSucceed:J

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v2, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->checkBatteryStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->checkWifiStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "precondition check failed "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "precondition check has failed continuously "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> forcibly write"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sTimestampLatestSucceed:J

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    :cond_3
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindChainService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private conditionalWriteDashboardInfo(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latest dashboard info : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::SecurityScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    if-nez v0, :cond_0

    const-string p1, "current status is null -> return without action"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/ParserDashboardInfo;->parseDashboardInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatusCause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getTrustLevel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getEncryptionPublicKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->areNotEmpty([Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->compare(Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "every dashboard info was written and status didn\'t change. skip write dashboard info"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->conditionalSyncChain()V

    goto :goto_0

    :cond_1
    const-string v2, ""

    if-nez v0, :cond_2

    const-string v2, "latest dashboard info did not include all required attributes. "

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "security status was changed since latest status was written. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "dashboard info is invalid"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "there is no latest dashboard info"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "conditionalWriteDashboardInfo"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->writeSecurityStatusToChain()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic d()I
    .locals 1

    sget v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    return v0
.end method

.method public static bridge synthetic f(I)V
    .locals 0

    sput p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sCntSyncFail:I

    return-void
.end method

.method public static bridge synthetic g(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->sTimestampLatestSucceed:J

    return-void
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestLatestSecurityStatus()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_DASHBOARD_INFO_SELF:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindChainService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private writeSecurityStatusToChain()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "security_status_cause"

    const-string v2, "timestamp"

    const-string v3, "security_status"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getCause()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->setArgument(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindChainService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/m;
    .locals 3

    const-string v0, "current security status : "

    const-string v1, "TrustChain::SecurityScanner"

    const-string v2, "security scan is started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->checkSecurityStatus()Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->mCurrentStatus:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->requestLatestSecurityStatus()V

    new-instance p0, Landroidx/work/l;

    sget-object v0, Landroidx/work/f;->c:Landroidx/work/f;

    invoke-direct {p0, v0}, Landroidx/work/l;-><init>(Landroidx/work/f;)V

    return-object p0

    :catch_0
    new-instance p0, Landroidx/work/l;

    sget-object v0, Landroidx/work/f;->c:Landroidx/work/f;

    invoke-direct {p0, v0}, Landroidx/work/l;-><init>(Landroidx/work/f;)V

    return-object p0
.end method
