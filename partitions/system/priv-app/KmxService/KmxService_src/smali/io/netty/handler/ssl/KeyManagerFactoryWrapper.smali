.class final Lio/netty/handler/ssl/KeyManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.source "SourceFile"


# instance fields
.field private final km:Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;-><init>()V

    const-string v0, "km"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/KeyManager;

    iput-object p1, p0, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .locals 0

    .line 1
    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    .line 2
    return-void
.end method
