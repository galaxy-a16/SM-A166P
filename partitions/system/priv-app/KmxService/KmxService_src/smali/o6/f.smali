.class public final Lo6/f;
.super Leb/t;
.source "SourceFile"


# instance fields
.field public final a:Lo7/b;

.field public final b:Lw5/h;


# direct methods
.method public constructor <init>(Lo7/b;Lw5/h;)V
    .locals 0

    invoke-direct {p0}, Leb/t;-><init>()V

    iput-object p1, p0, Lo6/f;->a:Lo7/b;

    iput-object p2, p0, Lo6/f;->b:Lw5/h;

    return-void
.end method


# virtual methods
.method public final b(Leb/u;)V
    .locals 4

    iget-object v0, p0, Lo6/f;->b:Lw5/h;

    iget-object v1, v0, Lw5/h;->h:Ln2/l;

    iget-object v1, v1, Ln2/l;->e:Ljava/lang/Object;

    check-cast v1, Lob/a;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo6/e;

    new-instance v2, Lo6/a;

    invoke-direct {v2, p1, v0}, Lo6/a;-><init>(Leb/u;Lw5/h;)V

    invoke-interface {p1, v2}, Leb/u;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lh/e;->b:Ljava/lang/Object;

    check-cast p1, Lio/netty/channel/EventLoop;

    new-instance v0, Landroidx/emoji2/text/n;

    const/16 v3, 0x8

    iget-object p0, p0, Lo6/f;->a:Lo7/b;

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
