.class public Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;,
        Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MessageManager"

.field private static final TIME_MESSAGE_CLIENT_ALIVE_IN_SEC:I = 0x3c


# instance fields
.field private final mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

.field private final mMessageReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;

.field private final mThresholdReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;

.field private runnableAfterThreshold:Ljava/lang/Runnable;

.field private final runnableNormalMessage:Ljava/lang/Runnable;

.field private runnableOnFailure:Ljava/lang/Runnable;

.field private final runnableThresholdReached:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableNormalMessage:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableThresholdReached:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;

    invoke-direct {p1, p0, p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mThresholdReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;

    invoke-direct {p1, p0, p5}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableAfterThreshold:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkServersActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "message client connection timer is expired -> unsubscribe and disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "blackboard threshold timer is expired, forcibly execute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->unsubscribeThreshold()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableAfterThreshold:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->doChainAction(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableOnFailure:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private startTimerNormalMessage()V
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "start timer normal message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const/16 v1, 0x3c

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableNormalMessage:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->startTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;ILjava/lang/Runnable;)V

    return-void
.end method

.method private stopTimerNormalMessage()V
    .locals 1

    const-string p0, "TrustChain::MessageManager"

    const-string v0, "stop timer normal message"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->stopTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V

    return-void
.end method

.method private subscribeNormalMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->subscribeBroadcast(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result v0

    const-string v1, "TrustChain::MessageManager"

    if-nez v0, :cond_0

    const-string p0, "subscribe broadcast failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_SUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->subscribeUnicast(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subscribe unicast failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->unsubscribeBroadcast()Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private unsubscribeNormalMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "unsubscribe normal message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->unsubscribeBroadcast()Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->unsubscribeUnicast()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_UNSUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public connectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 6

    const-string v0, "TrustChain::MessageManager"

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_CONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "message server was already connected, refresh timer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->refreshTimerNormalMessage()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->checkServersActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isBlank()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->connect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->subscribeNormalMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->startTimerNormalMessage()V

    const-string v2, "connect to message server succeed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->disconnect()Z

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Subscribe message failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Connection failed on Message Client"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Invalid auth token, can not connect"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_4
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Server was not activated"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_1
    :try_start_4
    const-string v3, "connectMessageServer"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    :goto_2
    return-object v0

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 4

    const-string v0, "TrustChain::MessageManager"

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_DISCONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->unsubscribeNormalMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->disconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->stopTimerNormalMessage()V

    const-string v2, "disconnect to message server succeed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Not connected to message server"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "disconnectMessageServer"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public doChainAction(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public refreshTimerNormalMessage()V
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "refresh timer normal message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const/16 v1, 0x3c

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableNormalMessage:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->refreshTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;ILjava/lang/Runnable;)V

    return-void
.end method

.method public setWorkAfterThreshold(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableAfterThreshold:Ljava/lang/Runnable;

    return-void
.end method

.method public setWorkOnFailure(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableOnFailure:Ljava/lang/Runnable;

    return-void
.end method

.method public startThresholdTimer()V
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "start threshold timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->THRESHOLD_REACHED:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const/16 v1, 0x1e

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->runnableThresholdReached:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->startTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;ILjava/lang/Runnable;)V

    return-void
.end method

.method public stopThresholdTimer()V
    .locals 1

    const-string p0, "TrustChain::MessageManager"

    const-string v0, "stop threshold timer"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->THRESHOLD_REACHED:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->stopTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V

    return-void
.end method

.method public subscribeThresholdReached()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "subscribe threshold reached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mThresholdReceiver:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->subscribeThreshold(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_SUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_0
    return-object p0
.end method

.method public unsubscribeThreshold()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MessageManager"

    const-string v1, "unsubscribe threshold"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->unsubscribeThreshold()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_UNSUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_0
    return-object p0
.end method

.method public updateFabricId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->mMessageClient:Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->updateFabricId(Ljava/lang/String;)V

    return-void
.end method
