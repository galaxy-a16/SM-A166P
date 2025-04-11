.class public Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;
    }
.end annotation


# static fields
.field private static final MAX_JITTER_VALUE:I = 0xc8

.field private static final MAX_RETRY_DELAY:J = 0xea60L

.field private static final MIN_JITTER_VALUE:I = 0x64

.field private static final RETRY_COUNT_CONNECT:Ljava/lang/Integer;

.field private static final RETRY_COUNT_SUBSCRIBE:Ljava/lang/Integer;

.field private static final SUBSCRIBE_OPERATION_TIMEOUT_SECONDS:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "TrustChain::MqttHelper"


# instance fields
.field private final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ln8/a;",
            ">;"
        }
    .end annotation
.end field

.field private mMqtt5Client:Lg8/c;

.field random:Ljava/security/SecureRandom;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final topicListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->RETRY_COUNT_CONNECT:Ljava/lang/Integer;

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->RETRY_COUNT_SUBSCRIBE:Ljava/lang/Integer;

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->SUBSCRIBE_OPERATION_TIMEOUT_SECONDS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->topicListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->random:Ljava/security/SecureRandom;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/j;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->consumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ly7/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->disconnectListener(Ly7/b;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Lt8/a;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->convertSubAckToBool(Lt8/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ly7/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->connectListener(Ly7/a;)V

    return-void
.end method

.method private canReconnect()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object p0

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private connectListener(Ly7/a;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "mqtt client connected, id : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustChain::MqttHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertSubAckToBool(Lt8/a;)Z
    .locals 3

    const-string p0, "TrustChain::MqttHelper"

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Lm7/a;

    iget-object p1, p1, Lu6/f;->e:Lv7/t;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->getCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscribe Ack Reason Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_0:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->getCode()I

    move-result p0

    if-lt p1, p0, :cond_1

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_2:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->getCode()I

    move-result p0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p1, "Subscribe Ack is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic d(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->lambda$buildClient$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private disconnectListener(Ly7/b;)V
    .locals 9

    const-string v0, "Retrying with a delay of "

    invoke-interface {p1}, Ly7/b;->a()Ly7/d;

    move-result-object v1

    invoke-interface {v1}, Ly7/d;->a()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v2

    invoke-interface {p1}, Ly7/b;->b()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-interface {p1}, Ly7/b;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mqtt client disconnected, id : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", state : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", attempts : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", source : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cause : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TrustChain::MqttHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eq v3, v2, :cond_1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->RETRY_COUNT_CONNECT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->canReconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "mqtt client initial connecting sequence, retrying connection with "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getRetryDelay(I)J

    move-result-wide v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ly7/b;->a()Ly7/d;

    move-result-object p0

    invoke-interface {p0, v4}, Ly7/d;->d(Z)Ly7/d;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, p1}, Ly7/d;->c(JLjava/util/concurrent/TimeUnit;)Ly7/d;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ly7/b;->a()Ly7/d;

    move-result-object p0

    invoke-interface {p0, v6}, Ly7/d;->d(Z)Ly7/d;

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->RETRY_COUNT_CONNECT:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le v1, p0, :cond_3

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/SSLUtils;->removeSAKCertChain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed in handling disconnection with error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ln8/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->lambda$new$0(Ln8/a;)V

    return-void
.end method

.method private getRetryDelay(I)J
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->random:Ljava/security/SecureRandom;

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x64

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lg8/c;->c()Lw5/h;

    move-result-object p0

    invoke-virtual {p0}, Lw5/h;->b()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isConnectedOrReconnect()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$buildClient$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private lambda$new$0(Ln8/a;)V
    .locals 4

    const-string v0, "TrustChain::MqttHelper"

    const-string v1, "mqtt message accepted, topic : "

    const-string v2, "mqtt message accepted, but callback is null, topic : "

    if-eqz p1, :cond_3

    :try_start_0
    move-object v3, p1

    check-cast v3, Le7/a;

    iget-object v3, v3, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Le7/a;

    iget-object v3, v3, Le7/a;->c:Lf6/d;

    invoke-virtual {v3}, Lf6/j;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->topicListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;

    if-eqz p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Le7/a;

    iget-object p1, p1, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    sget-object p1, Ll9/b;->g:[B

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, v1

    :goto_1
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;->acceptMessage([B)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mqtt callback error"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;I)Z
    .locals 11

    const-string v0, "TrustChain::MqttHelper"

    const-string v1, "subscribe ATTEMPT # "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Lf6/h;->c:Lf6/h;

    invoke-static {}, Lv7/t;->builder()Lv7/r;

    move-result-object v3

    .line 3
    sget-object v6, Ls8/b;->a:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v8, Ls8/b;->b:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 4
    invoke-static {p1}, Lf6/c;->j(Ljava/lang/String;)Lf6/c;

    move-result-object v5

    .line 5
    instance-of v4, v5, Lf6/b;

    .line 6
    new-instance v10, Ll7/c;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ll7/c;-><init>(Lf6/c;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    .line 7
    invoke-virtual {v3, v10}, Lv7/r;->a(Ljava/lang/Object;)V

    .line 8
    iget v4, v3, Lv7/r;->c:I

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v6, "At least one subscription must be added."

    if-eqz v4, :cond_3

    .line 9
    new-instance v4, Ll7/b;

    invoke-virtual {v3}, Lv7/r;->b()Lv7/t;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Ll7/b;-><init>(Lv7/t;Lf6/h;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    invoke-interface {v1}, Lg8/c;->b()Lg8/a;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->consumer:Ljava/util/function/Consumer;

    check-cast v1, Lw5/c;

    invoke-virtual {v1, v4, v3}, Lw5/c;->d(Ll7/b;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->SUBSCRIBE_OPERATION_TIMEOUT_SECONDS:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v6}, Ljava/util/concurrent/CompletableFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    new-instance v4, Lw5/d;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, Lw5/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/a;

    check-cast v1, Lm7/a;

    .line 11
    iget-object v1, v1, Lu6/f;->e:Lv7/t;

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->RETRY_COUNT_SUBSCRIBE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p3, v1, :cond_1

    const-string p0, "subscribe fail, but attempt count reaches to limit"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->disconnect()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->connect()Z

    add-int/2addr p3, v5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;I)Z

    move-result v3

    goto :goto_2

    :cond_2
    const-string p3, "Subscribe to topic is successful"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->topicListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    .line 13
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mqtt subscribeTopic error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :cond_4
    :goto_2
    return v3
.end method


# virtual methods
.method public buildClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TrustChain::MqttHelper"

    const-string v1, "clientId : "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user name : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Username"

    sget-object v2, Lf6/j;->d:Lf6/j;

    invoke-static {p2, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lf6/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lf6/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lf6/j;

    invoke-direct {v1, p2}, Lf6/j;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string p3, "Password"

    invoke-static {p2, p3}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p2

    const v2, 0xffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt p3, v2, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    if-eqz p3, :cond_5

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    new-instance p3, Lv6/c;

    invoke-direct {p3, v1, p2}, Lv6/c;-><init>(Lf6/j;Ljava/nio/ByteBuffer;)V

    new-instance p2, Lw5/p;

    invoke-direct {p2}, Lw5/p;-><init>()V

    sget-object v1, Lf6/a;->e:Lf6/a;

    const-string v1, "Client identifier"

    invoke-static {p1, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf6/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf6/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lf6/a;

    invoke-direct {v1, p1}, Lf6/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lw5/q;->d:Lf6/a;

    iget-object p1, p2, Lw5/q;->f:Lw5/j;

    new-instance v1, Lw5/d;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lw5/d;-><init>(Ljava/lang/Object;I)V

    sget-object p2, Lw7/a;->a:Leb/s;

    iget-object p2, p1, Lw5/j;->b:Ljava/util/concurrent/Executor;

    iget p2, p1, Lw5/j;->c:I

    iget-object p1, p1, Lw5/j;->d:Leb/s;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lw5/j;

    invoke-direct {v5, v2, p2, p1}, Lw5/j;-><init>(Ljava/util/concurrent/Executor;ILeb/s;)V

    invoke-virtual {v1, v5}, Lw5/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg8/d;

    const-string p2, "mapi.knox-matrix.com"

    check-cast p1, Lw5/p;

    const/4 v1, 0x0

    iput-object v1, p1, Lw5/q;->e:Lw5/m;

    const-string v2, "Server host"

    invoke-static {p2, v2}, Lp9/d;->Y(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lw5/n;->a:Ljava/lang/Object;

    const-string p2, "443"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput-object v1, p1, Lw5/q;->e:Lw5/m;

    int-to-long v1, p2

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_1

    const-wide/32 v5, 0xffff

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    move v4, v3

    :cond_1
    if-eqz v4, :cond_4

    iput p2, p1, Lw5/n;->b:I

    const-class p2, Lv6/c;

    const-string v1, "Simple auth"

    invoke-static {p3, p2, v1}, Lp9/d;->a0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p3, p1, Lw5/p;->j:Lv6/c;

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/client/network/a;

    invoke-direct {p2, p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;)V

    iget-object p3, p1, Lw5/q;->h:Lv7/r;

    if-nez p3, :cond_2

    invoke-static {}, Lv7/t;->builder()Lv7/r;

    move-result-object p3

    iput-object p3, p1, Lw5/q;->h:Lv7/r;

    :cond_2
    iget-object p3, p1, Lw5/q;->h:Lv7/r;

    invoke-virtual {p3, p2}, Lv7/r;->a(Ljava/lang/Object;)V

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/client/network/b;

    invoke-direct {p2, p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;)V

    iget-object p3, p1, Lw5/q;->g:Lv7/r;

    if-nez p3, :cond_3

    invoke-static {}, Lv7/t;->builder()Lv7/r;

    move-result-object p3

    iput-object p3, p1, Lw5/q;->g:Lv7/r;

    :cond_3
    iget-object p3, p1, Lw5/q;->g:Lv7/r;

    invoke-virtual {p3, p2}, Lv7/r;->a(Ljava/lang/Object;)V

    new-instance p2, Lw5/l;

    iget-object p3, p1, Lw5/n;->c:Lw5/k;

    new-instance v1, Lw5/d;

    invoke-direct {v1, p1, v3}, Lw5/d;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, v1}, Lw5/l;-><init>(Lw5/k;Lw5/d;)V

    iget-object p1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljavax/net/ssl/KeyManagerFactory;

    iput-object p1, p2, Lcom/google/android/gms/measurement/internal/z5;->b:Ljava/lang/Object;

    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljavax/net/ssl/TrustManagerFactory;

    iput-object p1, p2, Lcom/google/android/gms/measurement/internal/z5;->c:Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/client/network/c;

    invoke-direct {p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/c;-><init>()V

    iput-object p1, p2, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Lw5/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg8/d;

    check-cast p1, Lw5/p;

    invoke-virtual {p1}, Lw5/p;->a()Lw5/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Server port must not exceed the value range of unsigned short [0, 65535], but was "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Password can not be encoded as binary data. Maximum length is 65535 bytes, but was "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error in building mqtt client: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public connect()Z
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "TrustChain::MqttHelper"

    if-eqz v0, :cond_0

    const-string p0, "mqtt is already connected"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "connect with Message sever"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    invoke-interface {p0}, Lg8/c;->a()Lg8/b;

    move-result-object p0

    check-cast p0, Lw5/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lw5/d;

    invoke-direct {v3, p0, v0}, Lw5/d;-><init>(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v9, Lx6/b;->i:Lx6/b;

    :try_start_1
    sget-object v11, Lf6/h;->c:Lf6/h;

    const/4 v6, 0x1

    new-instance p0, Lx6/a;

    const/16 v5, 0x3c

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lx6/a;-><init>(IZJLx6/b;Lv6/c;Lf6/h;)V

    invoke-virtual {v3, p0}, Lw5/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ly6/a;

    iget-object p0, p0, Lu6/e;->d:Lh8/b;

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->getCode()I

    move-result p0

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->getValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mqtt connect error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public disconnect()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->isConnectedOrReconnect()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "TrustChain::MqttHelper"

    if-nez v0, :cond_0

    const-string p0, "mqtt is not in connected state"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    const-string v0, "disconnect with Message sever"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/SSLUtils;->removeSAKCertChain()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    invoke-interface {p0}, Lg8/c;->a()Lg8/b;

    move-result-object p0

    check-cast p0, Lw5/e;

    invoke-virtual {p0}, Lw5/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mqtt disconnect error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TrustChain::MqttHelper"

    const-string p1, "connect to the message server before subscribeTopic"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;I)Z

    move-result p0

    return p0
.end method

.method public unsubscribeTopic(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TrustChain::MqttHelper"

    if-nez v0, :cond_0

    const-string p0, "connect to the message server before unsubscribeTopic"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lf6/h;->c:Lf6/h;

    invoke-static {}, Lv7/t;->builder()Lv7/r;

    move-result-object v3

    invoke-static {p1}, Lf6/c;->j(Ljava/lang/String;)Lf6/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lv7/r;->a(Ljava/lang/Object;)V

    iget v4, v3, Lv7/r;->c:I

    const/4 v5, 0x1

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const-string v6, "At least one topic filter must be added."

    if-eqz v4, :cond_2

    new-instance v4, Lo7/b;

    invoke-virtual {v3}, Lv7/r;->b()Lv7/t;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lo7/b;-><init>(Lv7/t;Lf6/h;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->mMqtt5Client:Lg8/c;

    invoke-interface {v0}, Lg8/c;->a()Lg8/b;

    move-result-object v0

    check-cast v0, Lw5/e;

    invoke-virtual {v0, v4}, Lw5/e;->e(Lo7/b;)Lv8/a;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->topicListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Unsubscribe to topic is successful"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mqtt unsubscribeTopic error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
