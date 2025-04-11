.class public final Lw5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg8/a;


# instance fields
.field public final a:Lw5/o;


# direct methods
.method public constructor <init>(Lw5/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/c;->a:Lw5/o;

    return-void
.end method


# virtual methods
.method public final a()Lg8/b;
    .locals 1

    iget-object p0, p0, Lw5/c;->a:Lw5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lw5/e;

    invoke-direct {v0, p0}, Lw5/e;-><init>(Lw5/o;)V

    return-object v0
.end method

.method public final c()Lw5/h;
    .locals 0

    iget-object p0, p0, Lw5/c;->a:Lw5/o;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    return-object p0
.end method

.method public final d(Ll7/b;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    const-class v0, Ll7/b;

    const-string v1, "Subscribe"

    invoke-static {p1, v0, v1}, Lp9/d;->Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "Callback"

    invoke-static {p2, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw5/c;->a:Lw5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll6/m;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    invoke-direct {v0, p1, p0}, Ll6/m;-><init>(Ll7/b;Lw5/h;)V

    iget-object p0, p0, Lw5/h;->c:Lw5/j;

    iget-object p0, p0, Lw5/j;->d:Leb/s;

    const-string v1, "Scheduler"

    invoke-static {p0, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lt7/f;

    sget v2, Leb/e;->a:I

    invoke-direct {v1, v0, p0, v2}, Lt7/f;-><init>(Ll6/m;Leb/s;I)V

    new-instance p0, Lw5/b;

    invoke-direct {p0, p2}, Lw5/b;-><init>(Ljava/util/function/Consumer;)V

    new-instance p2, Lw8/b;

    invoke-direct {p2, v1}, Lw8/b;-><init>(Lt7/f;)V

    iget-object v0, p2, Lw8/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2, p0}, Leb/e;->subscribe(Lvc/c;)V

    iget-object p0, p1, Ll7/b;->c:Lv7/t;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance p1, Lw5/a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lw5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-object v0, p0

    :goto_0
    return-object v0
.end method
