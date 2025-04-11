.class public final Lio/netty/channel/local/LocalAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable<",
        "Lio/netty/channel/local/LocalAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lio/netty/channel/local/LocalAddress;

.field private static final serialVersionUID:J = 0x4073fad21fb18253L


# instance fields
.field private final id:Ljava/lang/String;

.field private final strVal:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/channel/local/LocalAddress;

    const-string v1, "ANY"

    invoke-direct {v0, v1}, Lio/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/channel/local/LocalAddress;->ANY:Lio/netty/channel/local/LocalAddress;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "local:E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide v3, 0x100000000L

    or-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    const/16 v1, 0x3a

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/local/LocalAddress;->strVal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    const-string v0, "id"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    const-string v0, "local:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/local/LocalAddress;->strVal:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lio/netty/channel/local/LocalAddress;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    iget-object p1, p1, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lio/netty/channel/local/LocalAddress;

    invoke-virtual {p0, p1}, Lio/netty/channel/local/LocalAddress;->compareTo(Lio/netty/channel/local/LocalAddress;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/channel/local/LocalAddress;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    check-cast p1, Lio/netty/channel/local/LocalAddress;

    iget-object p1, p1, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/local/LocalAddress;->strVal:Ljava/lang/String;

    return-object p0
.end method
