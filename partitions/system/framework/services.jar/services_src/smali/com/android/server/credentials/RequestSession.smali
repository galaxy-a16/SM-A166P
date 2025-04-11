.class public abstract Lcom/android/server/credentials/RequestSession;
.super Ljava/lang/Object;
.source "RequestSession.java"

# interfaces
.implements Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;


# instance fields
.field public final mCallingUid:I

.field public final mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mClientCallback:Ljava/lang/Object;

.field public final mClientRequest:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

.field public final mEnabledProviders:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public final mHybridService:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mProviders:Ljava/util/Map;

.field public final mRequestId:Landroid/os/IBinder;

.field public final mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

.field public mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public final mRequestType:Ljava/lang/String;

.field public final mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

.field public final mUniqueSessionInteger:I

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$W5dBnh3l1rDnI4n2MQ5AfT-pGr4(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/credentials/RequestSession;->lambda$setCancellationListener$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 99
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 121
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

    .line 124
    iput p4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 125
    iput p5, p0, Lcom/android/server/credentials/RequestSession;->mCallingUid:I

    .line 126
    iput-object p6, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 127
    iput-object p7, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 128
    iput-object p8, p0, Lcom/android/server/credentials/RequestSession;->mRequestType:Ljava/lang/String;

    .line 129
    iput-object p9, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 130
    iput-object p10, p0, Lcom/android/server/credentials/RequestSession;->mEnabledProviders:Ljava/util/Set;

    .line 131
    iput-object p11, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 132
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 p6, 0x0

    const/4 p7, 0x1

    invoke-direct {p2, p3, p6, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 134
    new-instance p2, Lcom/android/server/credentials/CredentialManagerUi;

    invoke-direct {p2, p1, p4, p0, p10}, Lcom/android/server/credentials/CredentialManagerUi;-><init>(Landroid/content/Context;ILcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10402fe

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/android/server/credentials/MetricUtilities;->getHighlyUniqueInteger()I

    move-result p1

    iput p1, p0, Lcom/android/server/credentials/RequestSession;->mUniqueSessionInteger:I

    .line 139
    new-instance p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 140
    invoke-static {}, Lcom/android/server/credentials/MetricUtilities;->getHighlyUniqueInteger()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 142
    invoke-static {p8}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCodeFromRequestInfo(Ljava/lang/String;)I

    move-result p1

    .line 141
    invoke-virtual {p2, p12, p13, p5, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectInitialPhaseMetricInfo(JII)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->setCancellationListener()V

    return-void
.end method

.method private synthetic lambda$setCancellationListener$0()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->maybeCancelUi()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void
.end method


# virtual methods
.method public addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelExistingPendingIntent()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RequestSession"

    const-string v1, "Unable to cancel existing pending intent"

    .line 235
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final clearRequestSessionLocked()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

    iget v2, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    invoke-interface {v1, v2, p0}, Lcom/android/server/credentials/RequestSession$SessionLifetime;->onFinishRequestSession(ILandroid/os/IBinder;)V

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishSession(Z)V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishing session with propagateCancellation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    :cond_0
    sget-object p1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 225
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->clearRequestSessionLocked()V

    return-void
.end method

.method public getProviderDataAndInitiateUi()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->launchUiWithProviderData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getProviderDataForUi()Ljava/util/ArrayList;
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For ui, provider data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidatePhaseMetrics(Ljava/util/Map;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-object v0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 293
    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/ui/ProviderData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public abstract initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
.end method

.method public abstract invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invokeClientCallbackSuccess(Ljava/lang/Object;)V
.end method

.method public isAnyProviderPending()Z
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 248
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPrimaryProviderViaProviderInfo(Landroid/content/ComponentName;)Z
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/ProviderSession;

    if-eqz p0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderInfo:Landroid/credentials/CredentialProviderInfo;

    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSessionCancelled()Z
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public isUiInvocationNeeded()Z
    .locals 3

    .line 264
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 265
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return v1
.end method

.method public abstract launchUiWithProviderData(Ljava/util/ArrayList;)V
.end method

.method public final maybeCancelUi()Z
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-virtual {v0}, Lcom/android/server/credentials/CredentialManagerUi;->getStatus()Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    if-ne v0, v1, :cond_0

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 161
    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v3, v4, v5}, Lcom/android/server/credentials/CredentialManagerUi;->createCancelIntent(Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 162
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget p0, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 160
    invoke-virtual {v2, v3, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUiSelection(Landroid/credentials/ui/UserSelectionDialogResult;)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "RequestSession"

    if-ne v0, v1, :cond_0

    const-string p0, "Request has already been completed. This is strange."

    .line 190
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/ui/UserSelectionDialogResult;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    if-nez v0, :cond_2

    const-string/jumbo p0, "providerSession not found in onUiSelection. This is strange."

    .line 200
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_2
    iget-object v2, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 204
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object v3

    .line 205
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 206
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v5, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 207
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v5

    .line 206
    invoke-virtual {v4, p1, v5}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectMetricPerBrowsingSelect(Landroid/credentials/ui/UserSelectionDialogResult;Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V

    .line 208
    invoke-virtual {p1}, Landroid/credentials/ui/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {p1}, Landroid/credentials/ui/UserSelectionDialogResult;->getEntrySubkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/credentials/ui/UserSelectionDialogResult;->getPendingIntentProviderResponse()Landroid/credentials/ui/ProviderPendingIntentResponse;

    move-result-object p1

    .line 208
    invoke-virtual {v0, v4, v5, p1}, Lcom/android/server/credentials/ProviderSession;->onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/ui/ProviderPendingIntentResponse;)V

    .line 210
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int v2, p1, v3

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 213
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 214
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v1

    .line 215
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logAuthEntry(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;)V

    :cond_4
    return-void
.end method

.method public respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidateAggregateMetrics(Ljava/util/Map;)V

    .line 342
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v3, "RequestSession"

    if-ne v0, v1, :cond_0

    const-string p0, "Request has already been completed. This is strange."

    .line 345
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 350
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p2

    .line 349
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logApiCalledAtFinish(I)V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void

    .line 356
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issue while responding to client with error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p2, "TYPE_USER_CANCELED"

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 361
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p2, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logFailureOrUserCancel(Z)V

    const/4 p1, 0x0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void
.end method

.method public respondToClientWithResponseAndFinish(Ljava/lang/Object;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidateAggregateMetrics(Ljava/util/Map;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v3, "RequestSession"

    if-ne v0, v1, :cond_0

    const-string p0, "Request has already been completed. This is strange."

    .line 311
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 315
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 316
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v0

    .line 315
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logApiCalledAtFinish(I)V

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void

    .line 321
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackSuccess(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 323
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v0

    .line 322
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logApiCalledAtFinish(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v4, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issue while responding to client with a response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 329
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v0

    .line 328
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logApiCalledAtFinish(I)V

    .line 331
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(Z)V

    return-void
.end method

.method public final setCancellationListener()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RequestSession;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method
