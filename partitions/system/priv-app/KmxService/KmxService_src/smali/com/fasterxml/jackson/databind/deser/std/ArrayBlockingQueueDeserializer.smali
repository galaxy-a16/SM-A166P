.class public Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/deser/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/deser/v;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/deser/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;)V

    return-void
.end method


# virtual methods
.method public _deserializeFromArray(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/g;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_deserializeFromArray(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-direct {p1, p3, p2, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZLjava/util/Collection;)V

    return-object p1
.end method

.method public createDefaultInstance(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/deser/r;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->_containerType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/r;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    move-result-object p0

    return-object p0
.end method
