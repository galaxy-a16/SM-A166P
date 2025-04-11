.class public final synthetic Lh6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lh6/c;


# direct methods
.method public synthetic constructor <init>(Lh6/c;)V
    .locals 0

    iput-object p1, p0, Lh6/b;->a:Lh6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/netty/channel/Channel;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p0, p0, Lh6/b;->a:Lh6/c;

    invoke-static {p0, p1, p2}, Lh6/c;->a(Lh6/c;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method
