.class public Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MessageClient"


# instance fields
.field private final mClientId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

.field private mTopicBroadcast:Ljava/lang/String;

.field private mTopicThresholdReached:Ljava/lang/String;

.field private mTopicUnicast:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mClientId:Ljava/lang/String;

    const-string p1, ":"

    invoke-static {p2, p1, p3}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mUserName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicBroadcast:Ljava/lang/String;

    const-string p1, "/"

    invoke-static {p2, p1, p3}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicUnicast:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ThresholdReached"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicThresholdReached:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TrustChain::MessageClient"

    const-string p1, "connect, auth token is not valid. Please check the auth connection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/SSLUtils;->getTLSConfig(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->buildClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->connect()Z

    move-result p0

    return p0
.end method

.method public disconnect()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->disconnect()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->isConnected()Z

    move-result p0

    return p0
.end method

.method public subscribeBroadcast(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicBroadcast:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result p0

    return p0
.end method

.method public subscribeThreshold(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicThresholdReached:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result p0

    return p0
.end method

.method public subscribeUnicast(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicUnicast:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->subscribeTopic(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;)Z

    move-result p0

    return p0
.end method

.method public unsubscribeBroadcast()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicBroadcast:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->unsubscribeTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unsubscribeThreshold()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicThresholdReached:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->unsubscribeTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unsubscribeUnicast()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mMqttHelper:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicUnicast:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->unsubscribeTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateFabricId(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    invoke-static {p1, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mUserName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicBroadcast:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {p1, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicUnicast:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mClientId:Ljava/lang/String;

    const-string v1, "/ThresholdReached"

    invoke-static {p1, v0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/MessageClient;->mTopicThresholdReached:Ljava/lang/String;

    return-void
.end method
