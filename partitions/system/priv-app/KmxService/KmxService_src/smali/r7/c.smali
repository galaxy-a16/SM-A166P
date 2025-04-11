.class public final Lr7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/netty/channel/MultithreadEventLoopGroup;

.field public b:I


# direct methods
.method public constructor <init>(Lio/netty/channel/MultithreadEventLoopGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr7/c;->b:I

    iput-object p1, p0, Lr7/c;->a:Lio/netty/channel/MultithreadEventLoopGroup;

    return-void
.end method
