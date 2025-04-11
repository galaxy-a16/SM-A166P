.class abstract Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.super Lio/netty/handler/ssl/JdkSslEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;
    }
.end annotation


# static fields
.field private static final USE_BUFFER_ALLOCATOR:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "io.netty.handler.ssl.conscrypt.useBufferAllocator"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->USE_BUFFER_ALLOCATOR:Z

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Lio/netty/buffer/ByteBufAllocator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JdkSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    sget-boolean p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->USE_BUFFER_ALLOCATOR:Z

    if-eqz p0, :cond_0

    new-instance p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/BufferAllocator;)V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;)V

    return-void
.end method

.method public static newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method

.method public static newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method


# virtual methods
.method public final calculateOutNetBufSize(II)I
    .locals 4

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I

    move-result p0

    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long p0, p1

    add-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/conscrypt/Conscrypt;->unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method
