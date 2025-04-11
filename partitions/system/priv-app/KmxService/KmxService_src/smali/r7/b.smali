.class public final synthetic Lr7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr7/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lr7/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lio/netty/channel/nio/NioEventLoopGroup;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, p2}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    return-object p0

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {p0, p2}, Lfc/e;->a(ILjava/util/concurrent/Executor;)Lio/netty/channel/epoll/EpollEventLoopGroup;

    move-result-object p0

    check-cast p0, Lio/netty/channel/MultithreadEventLoopGroup;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
