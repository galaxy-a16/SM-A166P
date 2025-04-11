.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V
    .locals 0

    .line 2566
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;-><init>()V

    .line 2567
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 2568
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z
    .locals 6

    const-string v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    .line 3081
    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3087
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3088
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    .line 3089
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-nez v3, :cond_0

    .line 3091
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 3093
    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3098
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "client process has already died"

    .line 3095
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 3100
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "session process has already died"

    .line 3083
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .locals 3

    .line 3059
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_3

    .line 3067
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 3072
    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onAdBuffer"

    .line 3069
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    .line 3072
    :try_start_4
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    goto :goto_0

    .line 3075
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    if-eqz p1, :cond_2

    .line 3072
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 3074
    :cond_2
    throw p0

    .line 3064
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 3075
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onAdRequest(Landroid/media/tv/AdRequest;)V
    .locals 2

    .line 2989
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2997
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdRequest(Landroid/media/tv/AdRequest;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onAdRequest"

    .line 2999
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3001
    :goto_0
    monitor-exit v0

    return-void

    .line 2994
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3001
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 3023
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3032
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onBiInteractiveAppCreated"

    .line 3035
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3037
    :goto_0
    monitor-exit v0

    return-void

    .line 3029
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3037
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 2

    .line 2616
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2621
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2625
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onBroadcastInfoRequest"

    .line 2627
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2629
    :goto_0
    monitor-exit v0

    return-void

    .line 2622
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2629
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 2653
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2662
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onCommandRequest"

    .line 2664
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2666
    :goto_0
    monitor-exit v0

    return-void

    .line 2659
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2666
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onLayoutSurface(IIII)V
    .locals 8

    .line 2597
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2602
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2606
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onLayoutSurface(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onLayoutSurface"

    .line 2609
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2611
    :goto_0
    monitor-exit v0

    return-void

    .line 2603
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2611
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRemoveBroadcastInfo(I)V
    .locals 2

    .line 2634
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2642
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRemoveBroadcastInfo(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRemoveBroadcastInfo"

    .line 2644
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2646
    :goto_0
    monitor-exit v0

    return-void

    .line 2639
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2646
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestAvailableSpeeds()V
    .locals 3

    .line 2828
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2836
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestAvailableSpeeds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestAvailableSpeeds"

    .line 2838
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    :goto_0
    monitor-exit v0

    return-void

    .line 2833
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2840
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentChannelLcn()V
    .locals 3

    .line 2743
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2751
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelLcn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentChannelLcn"

    .line 2753
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2755
    :goto_0
    monitor-exit v0

    return-void

    .line 2748
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2755
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentChannelUri()V
    .locals 3

    .line 2726
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2730
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2734
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelUri(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentChannelUri"

    .line 2736
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2738
    :goto_0
    monitor-exit v0

    return-void

    .line 2731
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2738
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentTvInputId()V
    .locals 3

    .line 2794
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2798
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2802
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentTvInputId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentTvInputId"

    .line 2804
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2806
    :goto_0
    monitor-exit v0

    return-void

    .line 2799
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2806
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentVideoBounds()V
    .locals 3

    .line 2709
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2717
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentVideoBounds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentVideoBounds"

    .line 2719
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    :goto_0
    monitor-exit v0

    return-void

    .line 2714
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2721
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    .line 2881
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2889
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestScheduleRecording"

    .line 2892
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2894
    :goto_0
    monitor-exit v0

    return-void

    .line 2886
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2894
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 14

    move-object v0, p0

    .line 2900
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2904
    :try_start_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2908
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v13

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v13}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onRequestScheduleRecording2"

    .line 2911
    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2913
    :goto_0
    monitor-exit v1

    return-void

    .line 2905
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 2913
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 2971
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2975
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2979
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestSigning"

    .line 2982
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2984
    :goto_0
    monitor-exit v0

    return-void

    .line 2976
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2984
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 2845
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2853
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestStartRecording"

    .line 2856
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2858
    :goto_0
    monitor-exit v0

    return-void

    .line 2850
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2858
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStopRecording(Ljava/lang/String;)V
    .locals 2

    .line 2863
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2871
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStopRecording(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestStopRecording"

    .line 2873
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2875
    :goto_0
    monitor-exit v0

    return-void

    .line 2868
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2875
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStreamVolume()V
    .locals 3

    .line 2760
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2768
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStreamVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestStreamVolume"

    .line 2770
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2772
    :goto_0
    monitor-exit v0

    return-void

    .line 2765
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2772
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTimeShiftMode()V
    .locals 3

    .line 2811
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2819
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTimeShiftMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestTimeShiftMode"

    .line 2821
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2823
    :goto_0
    monitor-exit v0

    return-void

    .line 2816
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2823
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTrackInfoList()V
    .locals 3

    .line 2777
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2785
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTrackInfoList(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestTrackInfoList"

    .line 2787
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2789
    :goto_0
    monitor-exit v0

    return-void

    .line 2782
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2789
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTvRecordingInfo(Ljava/lang/String;)V
    .locals 2

    .line 2936
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2940
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2944
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfo(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestTvRecordingInfo"

    .line 2946
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2948
    :goto_0
    monitor-exit v0

    return-void

    .line 2941
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2948
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTvRecordingInfoList(I)V
    .locals 2

    .line 2953
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2961
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfoList(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestTvRecordingInfoList"

    .line 2963
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2965
    :goto_0
    monitor-exit v0

    return-void

    .line 2958
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2965
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    .locals 10

    .line 2577
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2579
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2580
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v6, p1, v1

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    .line 2587
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 2588
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 2591
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 2592
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSessionStateChanged(II)V
    .locals 2

    .line 3006
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3014
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionStateChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onSessionStateChanged"

    .line 3016
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3018
    :goto_0
    monitor-exit v0

    return-void

    .line 3011
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3018
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 2

    .line 2918
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2926
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onSetTvRecordingInfo"

    .line 2929
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2931
    :goto_0
    monitor-exit v0

    return-void

    .line 2923
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2931
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSetVideoBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 2692
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2700
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetVideoBounds(Landroid/graphics/Rect;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onSetVideoBounds"

    .line 2702
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    :goto_0
    monitor-exit v0

    return-void

    .line 2697
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2704
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTeletextAppStateChanged(I)V
    .locals 2

    .line 3042
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3046
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3050
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTeletextAppStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onTeletextAppStateChanged"

    .line 3052
    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3054
    :goto_0
    monitor-exit v0

    return-void

    .line 3047
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3054
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 2673
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2682
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onTimeShiftCommandRequest"

    .line 2685
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2687
    :goto_0
    monitor-exit v0

    return-void

    .line 2679
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2687
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
