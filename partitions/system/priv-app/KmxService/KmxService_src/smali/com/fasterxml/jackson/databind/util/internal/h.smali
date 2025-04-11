.class public final Lcom/fasterxml/jackson/databind/util/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

.field public final synthetic c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    new-instance v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$WriteThroughEntry;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$WriteThroughEntry;-><init>(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;)V

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->checkState(Z)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->c:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/h;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    return-void
.end method
