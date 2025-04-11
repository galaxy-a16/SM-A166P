.class Lio/netty/handler/ssl/JettyNpnSslEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/npn/NextProtoNego$ClientProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/JettyNpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

.field final synthetic val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectProtocol(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {p0, p1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public supports()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public unsupported()V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {p0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->unsupported()V

    return-void
.end method
