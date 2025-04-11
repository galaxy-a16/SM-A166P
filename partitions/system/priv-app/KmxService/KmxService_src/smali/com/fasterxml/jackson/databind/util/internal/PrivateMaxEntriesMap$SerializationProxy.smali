.class final Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field final capacity:J

.field final concurrencyLevel:I

.field final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->concurrencyLevel:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;->concurrencyLevel:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;->data:Ljava/util/Map;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;->capacity:J

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/fasterxml/jackson/databind/util/internal/g;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/internal/g;-><init>()V

    iget-wide v1, p0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;->capacity:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->checkArgument(Z)V

    iput-wide v1, v0, Lcom/fasterxml/jackson/databind/util/internal/g;->c:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->checkState(Z)V

    new-instance v1, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;-><init>(Lcom/fasterxml/jackson/databind/util/internal/g;Lcom/fasterxml/jackson/databind/util/internal/e;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$SerializationProxy;->data:Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v1
.end method
