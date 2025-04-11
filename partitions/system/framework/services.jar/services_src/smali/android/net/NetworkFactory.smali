.class public Landroid/net/NetworkFactory;
.super Ljava/lang/Object;
.source "NetworkFactory.java"


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field static final DBG:Z = true

.field static final VDBG:Z = false


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final mImpl:Landroid/net/NetworkFactoryShim;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 64
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 66
    new-instance p3, Landroid/net/NetworkFactoryImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    goto :goto_0

    .line 68
    :cond_0
    new-instance p3, Landroid/net/NetworkFactoryLegacyImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 208
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1, p2, p3}, Landroid/net/NetworkFactoryShim;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Landroid/net/NetworkProvider;
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getProvider()Landroid/net/NetworkProvider;

    move-result-object p0

    return-object p0
.end method

.method public getRequestCount()I
    .locals 0

    .line 192
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getRequestCount()I

    move-result p0

    return p0
.end method

.method public getSerialNumber()I
    .locals 0

    .line 196
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getSerialNumber()I

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 204
    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1

    .line 156
    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    :cond_0
    return-void
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 80
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/NetworkFactoryShim;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final reevaluateAllRequests()V
    .locals 0

    .line 111
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->reevaluateAllRequests()V

    return-void
.end method

.method public register()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->register(Ljava/lang/String;)V

    return-void
.end method

.method public registerIgnoringScore()V
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->registerIgnoringScore(Ljava/lang/String;)V

    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 160
    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    :cond_0
    return-void
.end method

.method public releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 187
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public setScoreFilter(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(I)V

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 0

    .line 183
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public startNetwork()V
    .locals 0

    .line 0
    return-void
.end method

.method public stopNetwork()V
    .locals 0

    .line 0
    return-void
.end method

.method public terminate()V
    .locals 0

    .line 107
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->terminate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
