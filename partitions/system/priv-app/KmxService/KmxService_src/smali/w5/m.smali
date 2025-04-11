.class public final Lw5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lw5/m;


# instance fields
.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Lw5/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw5/m;

    const-string v1, "localhost"

    invoke-static {v1}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x75b

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lw5/m;-><init>(Ljava/net/InetSocketAddress;Lw5/k;)V

    sput-object v0, Lw5/m;->c:Lw5/m;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lw5/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/m;->a:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lw5/m;->b:Lw5/k;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw5/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw5/m;

    iget-object v1, p1, Lw5/m;->a:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lw5/m;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lw5/m;->b:Lw5/k;

    iget-object p1, p1, Lw5/m;->b:Lw5/k;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lw5/m;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lw5/m;->b:Lw5/k;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x1f

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    const p0, 0xea60

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
