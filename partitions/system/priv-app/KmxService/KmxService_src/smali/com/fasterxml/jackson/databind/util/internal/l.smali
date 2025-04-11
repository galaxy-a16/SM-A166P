.class public final Lcom/fasterxml/jackson/databind/util/internal/l;
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

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/l;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/internal/l;->a:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/l;->b:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->evictionDeque:Lcom/fasterxml/jackson/databind/util/internal/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/l;->a:Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->h(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap;->makeDead(Lcom/fasterxml/jackson/databind/util/internal/PrivateMaxEntriesMap$Node;)V

    return-void
.end method
