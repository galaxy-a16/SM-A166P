.class public Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ReferenceCounted;
.implements Lio/netty/handler/ssl/ApplicationProtocolAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field static final MAX_PLAINTEXT_LENGTH:I

.field private static final MAX_RECORD_SIZE:I

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final OPENSSL_OP_NO_PROTOCOLS:[I

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV2:I = 0x0

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV3:I = 0x1

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1:I = 0x2

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_1:I = 0x3

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_2:I = 0x4

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_3:I = 0x5

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private algorithmConstraints:Ljava/lang/Object;

.field final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile applicationProtocol:Ljava/lang/String;

.field private volatile clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private final clientMode:Z

.field private volatile destroyed:Z

.field private final enableOcsp:Z

.field private endPointIdentificationAlgorithm:Ljava/lang/String;

.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private handshakeException:Ljava/lang/Throwable;

.field private handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field private isInboundDone:Z

.field final jdkCompatibilityMode:Z

.field private volatile lastAccessed:J

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private volatile localCertificateChain:[Ljava/security/cert/Certificate;

.field private volatile matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end field

.field private maxWrapBufferSize:I

.field private maxWrapOverhead:I

.field private volatile needTask:Z

.field private networkBIO:J

.field private outboundClosed:Z

.field private final parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private receivedShutdown:Z

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field private final session:Lio/netty/handler/ssl/OpenSslSession;

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private sniHostNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssl:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    aput v3, v0, v1

    const/4 v1, 0x2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    aput v3, v0, v1

    const/4 v1, 0x3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    aput v3, v0, v1

    const/4 v1, 0x4

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    aput v3, v0, v1

    const/4 v1, 0x5

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    aput v3, v0, v1

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_PLAINTEXT_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_RECORD_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V
    .locals 6

    invoke-direct {p0, p3, p4}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    sget-object p4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object p4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    new-instance p4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;

    invoke-direct {p4, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    iput-object p4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    sget-object p4, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    iput-object p4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    const-string v1, "alloc"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object p2

    check-cast p2, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result p2

    iput-boolean p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;

    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    invoke-direct {v1, p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSession;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    :goto_0
    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    iget-object v1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iget-boolean v1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    iput-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    iput-boolean p5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v3, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v3, v4, v0}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-enter p0

    :try_start_1
    iput-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->getBioNonApplicationBufferSize()I

    move-result v0

    invoke-static {v3, v4, v0}, Lio/netty/internal/tcnative/SSL;->bioNewByteBuffer(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    :goto_2
    invoke-direct {p0, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    iget-object p4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p3}, Lio/netty/handler/ssl/SslUtils;->isValidHostNameForSNI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3, p3}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    :cond_4
    if-eqz v1, :cond_5

    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->enableOcsp(J)V

    :cond_5
    if-nez p5, :cond_6

    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->getMode(J)I

    move-result p4

    sget p5, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ENABLE_PARTIAL_WRITE:I

    or-int/2addr p4, p5

    invoke-static {p2, p3, p4}, Lio/netty/internal/tcnative/SSL;->setMode(JI)I

    :cond_6
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->retain()Lio/netty/util/ReferenceCounted;

    if-eqz p6, :cond_7

    sget-object p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/util/ResourceLeakTracker;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    return-void
.end method

.method public static synthetic access$1202(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object p1
.end method

.method public static synthetic access$1300([Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400([B)Z
    .locals 0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public static synthetic access$1800()I
    .locals 1

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    return v0
.end method

.method public static synthetic access$200(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return p0
.end method

.method public static synthetic access$300(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    return-wide v0
.end method

.method public static synthetic access$600(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    return p0
.end method

.method public static synthetic access$702(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    return p1
.end method

.method public static synthetic access$800(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslSession;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object p0
.end method

.method public static synthetic access$900(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    return-wide v0
.end method

.method private static bufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private calculateMaxWrapOverhead()V
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getMaxWrapOverhead(J)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    return-void
.end method

.method private checkEngineClosed()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljavax/net/ssl/SSLException;

    const-string v0, "engine closed"

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private closeAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeOutbound()V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeInbound()V

    return-void
.end method

.method private doSSLShutdown()Z
    .locals 6

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->isInInit(J)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->shutdownSSL(J)I

    move-result v0

    if-gez v0, :cond_4

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SYSCALL:I

    if-eq v0, v2, :cond_2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SSL:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SSL_shutdown failed: OpenSSL error: {} {}"

    invoke-interface {v0, v4, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_1

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    :cond_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslEngineMap;->add(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    :cond_4
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_a

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v0

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v0, v1, :cond_9

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v0, v1, :cond_8

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v0, v1, :cond_8

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v1, "SSL_do_handshake"

    invoke-direct {p0, v1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_0
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_9
    :goto_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p0

    return-object p0

    :cond_a
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_b

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_b
    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {p0}, Lio/netty/handler/ssl/OpenSslSession;->handshakeFinished()V

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0
.end method

.method private handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    instance-of p0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_1

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    throw v0

    :cond_1
    new-instance p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "General OpenSslEngine problem"

    invoke-direct {p0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p0
.end method

.method private isBytesAvailableEnoughForWrap(III)Z
    .locals 4

    int-to-long v0, p1

    iget p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long p0, p0

    int-to-long v2, p3

    mul-long/2addr p0, v2

    sub-long/2addr v0, p0

    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    return p0
.end method

.method private static isEmpty([B)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

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

.method private static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 2
    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

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

.method private static isEndPointVerificationEnabled(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isProtocolEnabled(IILjava/lang/String;)Z
    .locals 0

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private needPendingStatus()Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    :cond_0
    new-instance p0, Ljavax/net/ssl/SSLEngineResult;

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p0

    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    :cond_2
    new-instance p0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    .line 2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 0

    if-lez p0, :cond_0

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_0
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object p0
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {v1, v2, v3, v4, p0}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result p0

    if-lez p0, :cond_2

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v2

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v3, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    :try_start_0
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result p0

    if-lez p0, :cond_1

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {v3, v0, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v3}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_2
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    invoke-interface {v3}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
.end method

.method private rejectRemoteInitiatedRenegotiation()V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    new-instance p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "remote-initiated renegotiation not allowed"

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private resetSingleDstBuffer()V
    .locals 2

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method

.method private resetSingleSrcBuffer()V
    .locals 2

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method

.method private setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V
    .locals 5

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ClientAuth:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4, v1, v2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, v3, v2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    :goto_0
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object p0

    return-object p0
.end method

.method private shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;
    .locals 4

    .line 2
    int-to-long v0, p3

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const-string p1, "{} failed with {}: OpenSSL error: {} {}"

    invoke-interface {v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    iget-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object p2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne p1, p2, :cond_1

    new-instance p0, Ljavax/net/ssl/SSLException;

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 p2, 0x0

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    :cond_2
    return-object p1
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-object p0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-object p0
.end method

.method private sslPending0()I
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->sslPending(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method private sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq p1, v0, :cond_0

    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    int-to-long v0, p2

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    :cond_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    new-instance p0, Ljavax/net/ssl/SSLEngineResult;

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p0

    :cond_1
    const-string p3, "SSL_read"

    invoke-direct {p0, p3, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object p0

    throw p0
.end method

.method private toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_1
    :goto_0
    const/16 p0, 0x53

    if-eq v0, p0, :cond_3

    const/16 p0, 0x54

    if-eq v0, p0, :cond_2

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_2
    const-string p0, "TLS"

    return-object p0

    :cond_3
    const-string p0, "SSL"

    return-object p0
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;
    .locals 10

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    int-to-long v0, v0

    add-long v4, p0, v0

    const/4 v7, 0x0

    move v6, p2

    invoke-static/range {v2 .. v7}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    add-int v3, v0, p2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    const/4 v9, 0x0

    move v8, p2

    invoke-static/range {v4 .. v9}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result p0

    if-lez p0, :cond_2

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v2, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    add-int v3, v0, p2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result p0

    if-lez p0, :cond_1

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_2
    :goto_1
    return p0

    :catchall_0
    move-exception p0

    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
.end method


# virtual methods
.method public final declared-synchronized authMethods()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->authenticationMethods(J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized beginHandshake()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_2

    iput-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final calculateMaxLengthForWrap(II)I
    .locals 6

    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    int-to-long v0, v0

    int-to-long v2, p1

    iget p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long p0, p0

    int-to-long v4, p2

    mul-long/2addr p0, v4

    add-long/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final checkSniHostnameMatch([B)Z
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {p0, p1}, Lio/netty/handler/ssl/Java8SslUtils;->checkSniHostnameMatch(Ljava/util/Collection;[B)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized closeInbound()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized closeOutbound()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    and-int/2addr v0, v1

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getTask(J)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    aget-object v4, v0, v3

    :cond_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "SSLv2Hello"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    const-string v3, "TLSv1"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TLSv1"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    const-string v3, "TLSv1.1"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TLSv1.1"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    const-string v3, "TLSv1.2"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TLSv1.2"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    const-string v3, "TLSv1.3"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "TLSv1.3"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const-string v3, "SSLv2"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SSLv2"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget p0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    const-string v3, "SSLv3"

    invoke-static {v1, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "SSLv3"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_6
    :try_start_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNeedClientAuth()Z
    .locals 1

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNegotiatedApplicationProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getOcspResponse()[B
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    monitor-exit p0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getOcspResponse(J)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a client SSLEngine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OCSP stapling is not enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_3

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java7SslParametersUtils;->setAlgorithmConstraints(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lio/netty/handler/ssl/Java8SslUtils;->setSniHostNames(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/netty/handler/ssl/Java8SslUtils;->setUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;Z)V

    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/Java8SslUtils;->setSNIMatchers(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object p0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object p0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    sget-object p0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getUseClientMode()Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return p0
.end method

.method public final getWantClientAuth()Z
    .locals 1

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initHandshakeException(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    return-void
.end method

.method public final declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOutboundDone()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized masterKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getMasterKey(J)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxEncryptedPacketLength()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final maxEncryptedPacketLength0()I
    .locals 1

    iget p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    add-int/2addr p0, v0

    return p0
.end method

.method public final declared-synchronized maxWrapOverhead()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final refCnt()I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result p0

    return p0
.end method

.method public final release()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result p0

    return p0
.end method

.method public final release(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result p0

    return p0
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 5

    const-string v0, "failed to enable cipher suites: "

    const-string v1, "failed to enable cipher suites: "

    const-string v2, "cipherSuites"

    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TLSv1.3 is not supported by this java version."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    :try_start_1
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v1, 0x0

    invoke-static {v3, v4, p1, v1}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v2, v1}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_11

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_d

    aget-object v6, p1, v3

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "SSLv2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-lez v0, :cond_0

    move v0, v2

    :cond_0
    if-gez v4, :cond_b

    move v4, v2

    goto :goto_2

    :cond_1
    const-string v7, "SSLv3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-le v0, v5, :cond_2

    move v0, v5

    :cond_2
    if-ge v4, v5, :cond_b

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_3
    const-string v5, "TLSv1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    if-le v0, v5, :cond_4

    move v0, v5

    :cond_4
    if-ge v4, v5, :cond_b

    goto :goto_1

    :cond_5
    const-string v5, "TLSv1.1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x3

    if-le v0, v5, :cond_6

    move v0, v5

    :cond_6
    if-ge v4, v5, :cond_b

    goto :goto_1

    :cond_7
    const-string v5, "TLSv1.2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x4

    if-le v0, v5, :cond_8

    move v0, v5

    :cond_8
    if-ge v4, v5, :cond_b

    goto :goto_1

    :cond_9
    const-string v5, "TLSv1.3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x5

    if-le v0, v5, :cond_a

    move v0, v5

    :cond_a
    if-ge v4, v5, :cond_b

    goto :goto_1

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Protocol "

    const-string v0, " is not supported."

    invoke-static {p1, v6, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_10

    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget p1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr p1, v1

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr p1, v1

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr p1, v1

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr p1, v1

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    or-int/2addr p1, v1

    invoke-static {v6, v7, p1}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    move p1, v2

    :goto_3
    if-ge v2, v0, :cond_e

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    aget v1, v1, v2

    or-int/2addr p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v4, v5

    :goto_4
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v1, v0

    if-ge v4, v1, :cond_f

    aget v0, v0, v4

    or-int/2addr p1, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    monitor-exit p0

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to enable protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final setKeyMaterial(Lio/netty/handler/ssl/OpenSslKeyMaterial;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChainAddress()J

    move-result-wide v2

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->privateKeyAddress()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setNeedClientAuth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    return-void
.end method

.method public setOcspResponse([B)V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->setOcspResponse(J[B)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not a server SSLEngine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OCSP stapling is not enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getSniHostNames(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    :cond_1
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v0, v1, v2}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v0, v1, v2}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEndPointVerificationEnabled(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    :cond_5
    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AlgorithmConstraints are not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUseClientMode(Z)V
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final declared-synchronized setVerify(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1, p2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWantClientAuth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    return-void
.end method

.method public final declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/ssl/OpenSslEngineMap;->remove(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    :cond_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sslPending()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sslPointer()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7

    .line 3
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const-string v7, "srcs"

    invoke-static {v0, v7}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v7, v0

    if-ge v2, v7, :cond_34

    add-int v7, v2, v3

    array-length v8, v0

    if-gt v7, v8, :cond_34

    if-eqz v4, :cond_33

    array-length v3, v4

    if-ge v5, v3, :cond_32

    add-int v3, v5, v6

    array-length v8, v4

    if-gt v3, v8, :cond_32

    const-wide/16 v8, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v10, v4, v6

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dsts["

    const-string v2, "] is null"

    .line 4
    invoke-static {v1, v6, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v10, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v12, v0, v6

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcs["

    const-string v2, "] is null"

    .line 6
    invoke-static {v1, v6, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_7
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    iget-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const/4 v14, 0x0

    if-eq v12, v13, :cond_b

    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v12, v6, :cond_8

    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v12, :cond_9

    invoke-direct {v1, v6, v14, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_9
    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v12, :cond_a

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v0

    :cond_a
    iget-boolean v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    if-eqz v12, :cond_b

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v0

    :cond_b
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v12

    iget-boolean v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v13, :cond_11

    const-wide/16 v15, 0x5

    cmp-long v13, v10, v15

    if-gez v13, :cond_c

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v0, v6, v14, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_c
    invoke-static/range {p1 .. p2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v13

    const/4 v14, -0x2

    if-eq v13, v14, :cond_10

    add-int/lit8 v14, v13, -0x5

    move/from16 p3, v3

    int-to-long v2, v14

    cmp-long v2, v2, v8

    if-lez v2, :cond_e

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    if-gt v14, v0, :cond_d

    iget-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, v14}, Lio/netty/handler/ssl/OpenSslSession;->tryExpandApplicationBufferSize(I)V

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_d
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal packet length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    int-to-long v2, v13

    cmp-long v2, v10, v2

    if-gez v2, :cond_f

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    new-instance v0, Lio/netty/handler/ssl/NotSslRecordException;

    const-string v2, "not an SSL/TLS record"

    invoke-direct {v0, v2}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 p3, v3

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_12

    if-gtz v12, :cond_12

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_12
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_13

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v2, 0x0

    const-wide/32 v8, 0x7fffffff

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    long-to-int v13, v8

    :goto_4
    move v3, v2

    move v8, v3

    move/from16 v2, p2

    :cond_14
    :goto_5
    :try_start_1
    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    if-nez v10, :cond_16

    if-gtz v12, :cond_15

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v7, :cond_14

    goto/16 :goto_10

    :cond_15
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v10

    const/4 v11, 0x0

    goto :goto_6

    :cond_16
    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {v1, v9, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    :try_start_2
    aget-object v14, v4, v5

    invoke-virtual {v14}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v15

    if-nez v15, :cond_18

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, p3

    if-lt v5, v15, :cond_17

    if-eqz v11, :cond_2c

    goto/16 :goto_f

    :cond_17
    move/from16 p3, v15

    goto :goto_6

    :cond_18
    move/from16 v15, p3

    move/from16 p2, v12

    invoke-direct {v1, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v12

    move-object/from16 p3, v6

    move/from16 v16, v7

    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v6

    sub-int v6, v10, v6

    add-int/2addr v8, v6

    sub-int/2addr v13, v6

    sub-int/2addr v10, v6

    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v12, :cond_20

    add-int/2addr v3, v12

    invoke-virtual {v14}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v12

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v15, :cond_1c

    if-lez v12, :cond_19

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move-object/from16 v6, p3

    invoke-direct {v1, v0, v6, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    goto :goto_8

    :cond_19
    move-object/from16 v6, p3

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_7

    :cond_1a
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_7
    invoke-direct {v1, v0, v6, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    if-eqz v11, :cond_1b

    :try_start_3
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1b
    :try_start_4
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :cond_1c
    move-object/from16 v6, p3

    goto :goto_9

    :cond_1d
    move-object/from16 v6, p3

    if-eqz v13, :cond_1f

    :try_start_5
    iget-boolean v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v7, :cond_1e

    goto :goto_a

    :cond_1e
    move/from16 v12, p2

    :goto_9
    move/from16 p3, v15

    move/from16 v7, v16

    goto/16 :goto_6

    :cond_1f
    :goto_a
    if-eqz v11, :cond_2c

    goto/16 :goto_f

    :cond_20
    move-object/from16 v6, p3

    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v9, v10, v12}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v7

    sget v9, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v7, v9, :cond_2b

    sget v9, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v7, v9, :cond_21

    goto/16 :goto_e

    :cond_21
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne v7, v0, :cond_25

    iget-boolean v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v0, :cond_22

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_b

    :cond_23
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_b
    invoke-direct {v1, v0, v6, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_24

    :try_start_6
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_24
    :try_start_7
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-object v0

    :cond_25
    :try_start_8
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v7, v0, :cond_28

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v7, v0, :cond_28

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v7, v0, :cond_26

    goto :goto_c

    :cond_26
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {v1, v7, v0, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v11, :cond_27

    :try_start_9
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_27
    :try_start_a
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-object v0

    :cond_28
    :goto_c
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_d

    :cond_29
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_d
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v0, v2, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_2a

    :try_start_c
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_2a
    :try_start_d
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    return-object v0

    :cond_2b
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v16

    if-lt v2, v7, :cond_2f

    if-eqz v11, :cond_2c

    :goto_f
    :try_start_e
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_2c
    :goto_10
    :try_start_f
    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    iget-boolean v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v0, :cond_2d

    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    and-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    if-ne v0, v2, :cond_2d

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_11

    :cond_2e
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_11
    invoke-direct {v1, v0, v6, v8, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return-object v0

    :cond_2f
    if-eqz v11, :cond_30

    :try_start_10
    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_30
    move/from16 v12, p2

    move/from16 p3, v15

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_31

    invoke-interface {v11}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_31
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_11
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset: "

    const-string v2, ", length: "

    const-string v3, " (expected: offset <= offset + length <= dsts.length ("

    .line 8
    invoke-static {v1, v5, v2, v6, v3}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    array-length v2, v4

    const-string v3, "))"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dsts is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "offset: "

    const-string v4, ", length: "

    const-string v5, " (expected: offset <= offset + length <= srcs.length ("

    move/from16 v6, p2

    .line 12
    invoke-static {v2, v6, v4, v3, v5}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    array-length v0, v0

    const-string v3, "))"

    .line 14
    invoke-static {v2, v0, v3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7

    .line 44
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 11

    if-eqz p1, :cond_3f

    if-eqz p4, :cond_3e

    array-length v0, p1

    if-ge p2, v0, :cond_3d

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3d

    invoke-virtual {p4}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result p3

    if-nez p3, :cond_3c

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    return-object p1

    :cond_2
    const/4 p3, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-interface {v2, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    :goto_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v2

    iget-boolean v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_4

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, p3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    return-object p1

    :cond_5
    :try_start_3
    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-gtz p1, :cond_7

    :try_start_4
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p2, p3, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_6

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    invoke-virtual {v1, p3, p1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    return-object p2

    :cond_7
    :try_start_6
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p2, p3, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_8

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    invoke-virtual {v1, p3, p1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_5
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    return-object p2

    :cond_9
    :try_start_8
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sub-int/2addr v2, p1

    :try_start_9
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p3, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_a

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    return-object p1

    :catchall_0
    move-exception p1

    move p3, v2

    goto/16 :goto_23

    :catchall_1
    move-exception p2

    move p3, p1

    goto/16 :goto_1b

    :cond_b
    :try_start_b
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    iget-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v5, v6, :cond_1c

    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v5, v3, :cond_c

    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    :cond_c
    iget-wide v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    iget-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v5, :cond_10

    if-lez v3, :cond_e

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p3, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_d

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_7

    :cond_d
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_7
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    return-object p1

    :cond_e
    :try_start_e
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, p3, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_f

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_f
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_8
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    return-object p1

    :cond_10
    :try_start_10
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v3

    sub-int v3, v2, v3

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_12

    invoke-direct {p0, v5, p3, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_11

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9

    :cond_11
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_9
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    return-object p1

    :cond_12
    if-lez v3, :cond_16

    :try_start_12
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v5, p1, :cond_14

    if-ne v3, v2, :cond_13

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    :cond_13
    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    :cond_14
    :goto_a
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, p3, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_15

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_b
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    return-object p1

    :cond_16
    :try_start_14
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_19

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_c

    :cond_17
    sget-object p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :goto_c
    :try_start_15
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_18

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_d

    :cond_18
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_d
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    return-object p1

    :cond_19
    :try_start_16
    iget-boolean v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v6, :cond_1b

    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    invoke-direct {p0, v5, p3, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_1a

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e

    :cond_1a
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    invoke-virtual {v1, p3, p1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_e
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    return-object p2

    :cond_1b
    move-object v10, v5

    move v5, v3

    move-object v3, v10

    goto :goto_f

    :catchall_2
    move-exception p1

    move p3, v3

    goto/16 :goto_23

    :cond_1c
    move v5, p3

    :goto_f
    :try_start_19
    iget-boolean v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v6, :cond_23

    move v6, p2

    move v7, p3

    :goto_10
    if-ge v6, v0, :cond_21

    aget-object v8, p1, v6

    if-eqz v8, :cond_20

    sget v9, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-ne v7, v9, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v9, :cond_1e

    if-gez v7, :cond_1f

    :cond_1e
    move v7, v9

    :cond_1f
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "srcs["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-direct {p0, v6, v7, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result v4

    if-nez v4, :cond_23

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_22

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_12

    :cond_22
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v5}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_12
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    return-object p1

    :cond_23
    :try_start_1b
    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :goto_13
    if-ge p2, v0, :cond_39

    :try_start_1c
    aget-object v5, p1, p2

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-nez v6, :cond_24

    goto :goto_16

    :cond_24
    iget-boolean v7, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v7, :cond_25

    sget v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    sub-int/2addr v7, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_15

    :cond_25
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    sub-int/2addr v7, v4

    iget v8, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    sub-int/2addr v7, v8

    if-gtz v7, :cond_27

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_26

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_14

    :cond_26
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_14
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    return-object p1

    :cond_27
    :try_start_1e
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_15
    invoke-direct {p0, v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v6

    sub-int/2addr v2, v6

    add-int/2addr v4, v2

    if-lez v5, :cond_2b

    add-int/2addr p3, v5

    iget-boolean v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-nez v2, :cond_29

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-ne v4, v2, :cond_28

    goto :goto_17

    :cond_28
    move v2, v6

    :goto_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_29
    :goto_17
    invoke-direct {p0, v3, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_2a

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_18

    :cond_2a
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_18
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    return-object p1

    :cond_2b
    :try_start_20
    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1, p2, v5}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result p1

    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne p1, p2, :cond_31

    iget-boolean p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez p1, :cond_2f

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result p1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    sub-int/2addr v6, p1

    add-int/2addr v6, v4

    :try_start_21
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, p1, :cond_2d

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-ne v6, p1, :cond_2c

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_19

    :cond_2c
    iget-wide p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    :cond_2d
    :goto_19
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, p3, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    :try_start_22
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_2e

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v6

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1a

    :cond_2e
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_1a
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    return-object p1

    :catchall_3
    move-exception p2

    move p3, v6

    :goto_1b
    move-object p1, p2

    goto/16 :goto_23

    :cond_2f
    :try_start_23
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :try_start_24
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_30

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    :cond_30
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_1c
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    return-object p1

    :cond_31
    :try_start_25
    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-ne p1, p2, :cond_33

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :try_start_26
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_32

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1d

    :cond_32
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_1d
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    return-object p1

    :cond_33
    :try_start_27
    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne p1, p2, :cond_35

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, p1, v3, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    :try_start_28
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_34

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    :cond_34
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_1e
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    return-object p1

    :cond_35
    :try_start_29
    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq p1, p2, :cond_37

    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq p1, p2, :cond_37

    sget p2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne p1, p2, :cond_36

    goto :goto_1f

    :cond_36
    const-string p2, "SSL_write"

    invoke-direct {p0, p2, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1

    :cond_37
    :goto_1f
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    :try_start_2a
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_38

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_20

    :cond_38
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_20
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    return-object p1

    :catchall_4
    move-exception p1

    goto :goto_22

    :cond_39
    :try_start_2b
    invoke-direct {p0, v3, p3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    :try_start_2c
    iget-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p2, p3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v1, :cond_3a

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_21

    :cond_3a
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_21
    monitor-exit p0

    return-object p1

    :goto_22
    move p3, v4

    goto :goto_23

    :catchall_5
    move-exception p1

    move p3, v5

    goto :goto_23

    :catchall_6
    move-exception p1

    :goto_23
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v1, p2, p3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_24

    :cond_3b
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_24
    throw p1

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    throw p1

    :cond_3c
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0

    :cond_3d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p4, "offset: "

    const-string v0, ", length: "

    const-string v1, " (expected: offset <= offset + length <= srcs.length ("

    .line 2
    invoke-static {p4, p2, v0, p3, v1}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    array-length p1, p1

    const-string p3, "))"

    .line 4
    invoke-static {p2, p1, p3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dst is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcs is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
