.class public abstract Lh6/h;
.super Lh6/e;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh6/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 0

    return-void
.end method

.method public final isSharable()Z
    .locals 0

    iget-object p0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
