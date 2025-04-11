.class final Lio/netty/channel/embedded/EmbeddedSocketAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x137099ff01041a8bL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "embedded"

    return-object p0
.end method
