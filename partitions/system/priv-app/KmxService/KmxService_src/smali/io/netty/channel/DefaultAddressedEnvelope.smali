.class public Lio/netty/channel/DefaultAddressedEnvelope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/AddressedEnvelope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/channel/AddressedEnvelope<",
        "TM;TA;>;"
    }
.end annotation


# instance fields
.field private final message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final recipient:Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final sender:Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TA;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TA;TA;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "message"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "recipient and sender"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    iput-object p3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    iput-object p2, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    return-object p0
.end method

.method public recipient()Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/util/ReferenceCounted;

    invoke-interface {p0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public release()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public release(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public retain()Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public retain(I)Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;I)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->retain()Lio/netty/channel/AddressedEnvelope;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->retain(I)Lio/netty/channel/AddressedEnvelope;

    move-result-object p0

    return-object p0
.end method

.method public sender()Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    const/16 v1, 0x29

    const-string v2, ", "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(=> "

    goto :goto_0
.end method

.method public touch()Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->touch()Lio/netty/channel/AddressedEnvelope;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;

    move-result-object p0

    return-object p0
.end method
