.class final Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;
.super Lio/netty/handler/ssl/SslMasterKeyHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslMasterKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WiresharkSslMasterKeyHandler"
.end annotation


# static fields
.field private static final hexCode:[C

.field private static final wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "io.netty.wireshark"

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->hexCode:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/SslMasterKeyHandler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V
    .locals 1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x30

    if-ne p0, v0, :cond_0

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object p0

    sget-object p2, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p0}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RSA Session-ID:{} Master-Key:{}"

    invoke-interface {p2, v0, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An invalid length master key was provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
