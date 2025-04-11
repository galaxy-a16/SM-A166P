.class public Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;
.super La9/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingFirebaseInstanceTokenRefresh"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::FcmEventReceiver"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private final mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, La9/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mCategory:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;Lcom/google/firebase/messaging/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->lambda$messageReceived$0(Lcom/google/firebase/messaging/p;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method private lambda$messageReceived$0(Lcom/google/firebase/messaging/p;)V
    .locals 3

    iget-object v0, p1, Lcom/google/firebase/messaging/p;->a:Landroid/os/Bundle;

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/p;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "category"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mCategory:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->a:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mCategory:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "From: {0} Message Id: {1} message category : {2}"

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrustChain::FcmEventReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mCategory:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->setArgument(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindChainService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/google/firebase/messaging/p;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/messaging/p;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TrustChain::FcmEventReceiver"

    const-string p1, "the remote message instance is not valid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "TrustChain::FcmEventReceiver"

    const-string v1, "FcmEventReceiver onUnbind is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
