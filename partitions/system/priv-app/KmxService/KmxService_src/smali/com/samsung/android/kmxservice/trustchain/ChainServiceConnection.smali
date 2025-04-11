.class public Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field static final TAG:Ljava/lang/String; = "TrustChain::ChainServiceConnection"


# instance fields
.field private mAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

.field private final mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    return-void
.end method

.method private unregisterCallback(I)V
    .locals 3

    const-string v0, "unregisterCallback"

    const-string v1, "TrustChain::ChainServiceConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->unRegisterCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unregisterCallback exception, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleComplete(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->unregisterCallback(I)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TrustChain::ChainServiceConnection"

    const-string v0, "mServiceConnection onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TrustChain::ChainServiceConnection"

    const-string v0, "mServiceConnection onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mServiceConnection onServiceConnected : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TrustChain::ChainServiceConnection"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_DASHBOARD_INFO_SELF:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    if-ne p2, v2, :cond_3

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    :goto_1
    invoke-interface {p1, p2, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->registerCallback(ILcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    goto :goto_1

    :goto_2
    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection$1;->$SwitchMap$com$samsung$android$kmxservice$sdk$trustchain$ChainRequest:[I

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    new-instance p0, Landroid/os/RemoteException;

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->syncTrustChain()V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->handlePushEvents(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->signedInSamsungAccount()V

    goto/16 :goto_4

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getDashboardInfoSelf()V

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectMemberAbnormality(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectTrustedFabricAbnormality(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->detectFabricAbnormality()V

    goto :goto_4

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getMemberDashboardInfo(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->getFabricDashboardInfo()V

    goto :goto_4

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->readDataDashboard()V

    goto :goto_4

    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->writeDataDashboard(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->destroyService()V

    goto :goto_4

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->deactivateService()V

    goto :goto_4

    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mInterface:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface;->activateService()V

    goto :goto_4

    :goto_3
    const-string p1, "Invalid request"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TrustChain::ChainServiceConnection"

    const-string v0, "mServiceConnection onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mRequest:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    return-void
.end method

.method public setArgument(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArgument(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mAttr:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->mValues:Ljava/util/List;

    return-void

    :cond_0
    const-string p0, "TrustChain::ChainServiceConnection"

    const-string p1, "attr and values size is not matched"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
