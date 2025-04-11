.class public Lcom/android/server/credentials/PrepareGetRequestSession;
.super Lcom/android/server/credentials/GetRequestSession;
.source "PrepareGetRequestSession.java"


# instance fields
.field public final mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

.field public mPrimaryProviders:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$8opb07_ZnZVASXSfyBDjRzmAVI4(Landroid/credentials/ui/GetCredentialProviderData;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasAuthenticationResults$3(Landroid/credentials/ui/GetCredentialProviderData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DmqaxOOX1U3kNcY1OCvZ_H-x8EQ(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasRemoteResults$0(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S0GhzOU5eBsG0I_Qgz6Oa_oSXSM(Landroid/credentials/ui/GetCredentialProviderData;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasRemoteResults$1(Landroid/credentials/ui/GetCredentialProviderData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZGDkEM8JPWy-9f01BiyXdDiUFDE(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$getCredentialResultTypes$5(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$emrAtWIsXlr8dDiTtZgPnVtgJHc(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasAuthenticationResults$2(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pmHr6_RGCPmCEWc7SynYOYPCg6c(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 0

    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$getCredentialResultTypes$4(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    invoke-virtual {p7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p1, p7}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    iput-object p14, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    iput-object p10, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    return-void
.end method

.method public static synthetic lambda$getCredentialResultTypes$4(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 0

    check-cast p0, Lcom/android/server/credentials/ProviderGetSession;

    return-object p0
.end method

.method public static synthetic lambda$getCredentialResultTypes$5(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->getCredentialEntryTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hasAuthenticationResults$2(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;
    .locals 0

    check-cast p0, Landroid/credentials/ui/GetCredentialProviderData;

    return-object p0
.end method

.method public static synthetic lambda$hasAuthenticationResults$3(Landroid/credentials/ui/GetCredentialProviderData;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/credentials/ui/GetCredentialProviderData;->getAuthenticationEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$hasRemoteResults$0(Landroid/credentials/ui/ProviderData;)Landroid/credentials/ui/GetCredentialProviderData;
    .locals 0

    check-cast p0, Landroid/credentials/ui/GetCredentialProviderData;

    return-object p0
.end method

.method public static synthetic lambda$hasRemoteResults$1(Landroid/credentials/ui/GetCredentialProviderData;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/credentials/ui/GetCredentialProviderData;->getRemoteEntry()Landroid/credentials/ui/Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final constructEmptyPendingResponseAndInvokeCallback(Z)V
    .locals 7

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v6, Landroid/credentials/PrepareGetCredentialResponseInternal;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {p0, v6}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrepareGetRequestSession"

    const-string v0, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V
    .locals 7

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v6, Landroid/credentials/PrepareGetCredentialResponseInternal;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {p0, v6}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrepareGetRequestSession"

    const-string p2, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final getCredentialResultTypes(Z)Ljava/util/Set;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getUiIntent()Landroid/app/PendingIntent;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    invoke-virtual {v2}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/ui/ProviderData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/GetCredentialRequest;

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p0}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v7, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v6, p0, v7}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {v3, v4, v5, p0, v1}, Landroid/credentials/ui/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZLjava/util/List;)Landroid/credentials/ui/RequestInfo;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/ui/RequestInfo;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAuthenticationResults(Ljava/util/ArrayList;Z)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final hasRemoteResults(Ljava/util/ArrayList;Z)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider Status changed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrepareGetRequestSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const-string p0, "Unexpected source"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, p3, :cond_1

    invoke-super {p0, p2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    invoke-static {p1, p2, p3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->getCredentialResultTypes(Z)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasAuthenticationResults(Ljava/util/ArrayList;Z)Z

    move-result v3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasRemoteResults(Ljava/util/ArrayList;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->getUiIntent()Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructEmptyPendingResponseAndInvokeCallback(Z)V

    :cond_5
    :goto_0
    return-void
.end method
