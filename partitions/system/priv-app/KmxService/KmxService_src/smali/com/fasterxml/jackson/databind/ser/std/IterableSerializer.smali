.class public Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase<",
        "Ljava/lang/Iterable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lg2/a;
.end annotation


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 6

    .line 1
    const-class v1, Ljava/lang/Iterable;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/k;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public hasSingleElement(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->hasSingleElement(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public final serialize(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->hasSingleElement(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/f;->R0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->w0()V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->serialize(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/z;->defaultSerializeNull(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p3, v4, v1}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    move-object v1, v4

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {v2, v3, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3, p2, p3, v0}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    :goto_2
    move-object v2, v4

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    move-result-object p0

    return-object p0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Boolean;)V

    return-object v6
.end method
