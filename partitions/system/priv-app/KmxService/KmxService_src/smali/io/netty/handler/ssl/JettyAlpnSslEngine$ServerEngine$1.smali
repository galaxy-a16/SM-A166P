.class Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/alpn/ALPN$ServerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;

.field final synthetic val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;->this$0:Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/List;)Ljava/lang/String;
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
    iget-object p0, p0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {p0, p1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object p0

    throw p0
.end method

.method public unsupported()V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {p0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->unsupported()V

    return-void
.end method
