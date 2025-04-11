.class public final Ll6/m;
.super Lw8/c;
.source "SourceFile"


# instance fields
.field public final b:Ll7/b;

.field public final c:Lw5/h;

.field public final d:Z


# direct methods
.method public constructor <init>(Ll7/b;Lw5/h;)V
    .locals 0

    invoke-direct {p0}, Lw8/c;-><init>()V

    iput-object p1, p0, Ll6/m;->b:Ll7/b;

    iput-object p2, p0, Ll6/m;->c:Lw5/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll6/m;->d:Z

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 5

    iget-object v0, p0, Ll6/m;->c:Lw5/h;

    iget-object v1, v0, Lw5/h;->h:Ln2/l;

    iget-object v2, v1, Ln2/l;->c:Ljava/lang/Object;

    check-cast v2, Lob/a;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll6/f;

    iget-object v1, v1, Ln2/l;->e:Ljava/lang/Object;

    check-cast v1, Lob/a;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo6/e;

    new-instance v3, Ll6/h;

    iget-boolean v4, p0, Ll6/m;->d:Z

    invoke-direct {v3, p1, v0, v2, v4}, Ll6/h;-><init>(Lvc/c;Lw5/h;Ll6/f;Z)V

    invoke-interface {p1, v3}, Lvc/c;->onSubscribe(Lvc/d;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lh/e;->b:Ljava/lang/Object;

    check-cast p1, Lio/netty/channel/EventLoop;

    new-instance v0, Landroidx/emoji2/text/n;

    const/4 v2, 0x7

    iget-object p0, p0, Ll6/m;->b:Ll7/b;

    invoke-direct {v0, v1, v3, p0, v2}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lw8/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll6/m;->b(Lvc/c;)V

    return-void
.end method
