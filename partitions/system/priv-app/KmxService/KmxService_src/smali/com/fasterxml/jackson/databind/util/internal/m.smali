.class public final Lcom/fasterxml/jackson/databind/util/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

.field public final synthetic c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;I)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->a:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget v4, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->a:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/m;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->applyRead(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->evict()V

    return-void
.end method
