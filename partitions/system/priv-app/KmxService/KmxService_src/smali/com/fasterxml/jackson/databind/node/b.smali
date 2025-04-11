.class public final Lcom/fasterxml/jackson/databind/node/b;
.super Lcom/fasterxml/jackson/databind/l;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

.field public b:Lcom/fasterxml/jackson/databind/z;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/BaseJsonNode;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/l;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/b;->a:Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    return-void
.end method


# virtual methods
.method public final serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 3

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/b;->b:Lcom/fasterxml/jackson/databind/z;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/b;->a:Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->size()I

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->V0(Ljava/lang/Object;)V

    new-instance p2, Lj0/b;

    invoke-direct {p2, v2}, Lj0/b;-><init>(I)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->fields()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->size()I

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->S0(Ljava/lang/Object;)V

    new-instance p2, Lj0/b;

    invoke-direct {p2, v2}, Lj0/b;-><init>(I)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->elements()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_2
    check-cast p2, Lcom/fasterxml/jackson/databind/k;

    instance-of v2, p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lj0/b;->b(Ljava/util/Iterator;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/k;->fields()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/k;->size()I

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->V0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v2, p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Lj0/b;->b(Ljava/util/Iterator;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/k;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/k;->size()I

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->S0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/b;->b:Lcom/fasterxml/jackson/databind/z;

    invoke-interface {p2, p1, v2}, Lcom/fasterxml/jackson/databind/m;->serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->x()Lc2/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->w0()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->x0()V

    :goto_2
    iget p2, v1, Lj0/b;->a:I

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_3

    :cond_7
    iget-object v0, v1, Lj0/b;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/util/Iterator;

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Lj0/b;->a:I

    aget-object p2, v0, p2

    :goto_3
    move-object v0, p2

    if-nez v0, :cond_1

    goto :goto_4

    :cond_8
    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/m;->serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :goto_4
    return-void
.end method
