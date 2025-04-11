.class public final Lcom/fasterxml/jackson/databind/util/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

.field public final synthetic b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/f;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/internal/f;->a:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/f;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/f;->a:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/util/internal/p;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/internal/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->evictionDeque:Lcom/fasterxml/jackson/databind/util/internal/d;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->evict()V

    :cond_0
    return-void
.end method
