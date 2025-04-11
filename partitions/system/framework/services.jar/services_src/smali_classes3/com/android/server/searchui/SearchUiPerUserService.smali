.class public Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SearchUiPerUserService.java"

# interfaces
.implements Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method public static synthetic $r8$lambda$Pw-O2cR6TE7Hit5KBt17DWBo3Fk(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$queryLocked$3(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHu71Z5EOq_uYTY_IvYtOvjdgpE(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$unregisterEmptyQueryResultUpdateCallbackLocked$5(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9RZ0LNKV8Vdm8uBIwf12qOmTU4(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$er8ejm4BG39NOX7x3MNbdJMWlo8(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onDestroyLocked$6(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u4za1p-T_mrkRftS_O-2dQ3lppw(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vb71XIG-rh6j-RymHY7nvmd_oYM(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$registerEmptyQueryResultUpdateCallbackLocked$4(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ve-kttRyHDsBquvJZSCh72Qwvc0(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$notifyLocked$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteServiceLocked(Lcom/android/server/searchui/SearchUiPerUserService;)Lcom/android/server/searchui/RemoteSearchUiService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/server/searchui/SearchUiPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 63
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic lambda$notifyLocked$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 136
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$onCreateSearchSessionLocked$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 109
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method private synthetic lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$onDestroyLocked$6(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 194
    invoke-interface {p1, p0}, Landroid/service/search/ISearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic lambda$queryLocked$3(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 148
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public static synthetic lambda$registerEmptyQueryResultUpdateCallbackLocked$4(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 161
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public static synthetic lambda$unregisterEmptyQueryResultUpdateCallbackLocked$5(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .locals 0

    .line 177
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 270
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 271
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 272
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_0

    .line 318
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 324
    new-instance v8, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.service.search.SearchUiService"

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/searchui/SearchUiManagerService;

    .line 326
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;ZZ)V

    iput-object v8, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 78
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 81
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 212
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_1

    .line 216
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit p1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->resurrectSessionsLocked()V

    .line 222
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_1

    return-void

    .line 193
    :cond_1
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 195
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    return-void
.end method

.method public onPackageRestartedLocked()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 232
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 233
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_0
    move-exception p0

    .line 233
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V

    return-void
.end method

.method public queryLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 163
    invoke-virtual {v0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->addCallbackLocked(Landroid/app/search/ISearchCallback;)V

    :cond_1
    return-void
.end method

.method public resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resurrectSessionsLocked()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 288
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 294
    iget-object v2, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->resurrectSessionLocked(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda6;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {v0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->removeCallbackLocked(Landroid/app/search/ISearchCallback;)V

    :cond_1
    return-void
.end method

.method public updateLocked(Z)Z
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    :cond_0
    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    :cond_0
    return-void
.end method
