.class public final Lw8/a;
.super Ljava/util/concurrent/CompletableFuture;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw8/b;


# direct methods
.method public constructor <init>(Lw8/b;)V
    .locals 0

    iput-object p1, p0, Lw8/a;->a:Lw8/b;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 3

    iget-object v0, p0, Lw8/a;->a:Lw8/b;

    iget-object v1, v0, Lw8/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw8/b;->cancel()V

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p0

    return p0
.end method
