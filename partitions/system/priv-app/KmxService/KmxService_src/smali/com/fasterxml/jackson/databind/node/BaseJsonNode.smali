.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/k;-><init>()V

    return-void
.end method


# virtual methods
.method public _jsonPointerIfValid(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0
.end method

.method public varargs _reportWrongNodeOperation(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs _reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public _withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public _withXxxMayReplace(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;)Z
    .locals 1

    sget-object p0, Lcom/fasterxml/jackson/databind/node/a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/k;->isContainerNode()Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/k;->isNull()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public _withXxxVerifyReplace(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;ZLcom/fasterxml/jackson/databind/k;)V
    .locals 1

    invoke-virtual {p0, p5, p3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_withXxxMayReplace(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    const/4 p5, 0x1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonPointer;->getMatchingProperty()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p5

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const/4 p1, 0x3

    aput-object p3, p4, p1

    const-string p1, "Cannot replace `JsonNode` of type `%s` for property \"%s\" in JSON Pointer \"%s\" (mode `OverwriteMode.%s`)"

    invoke-virtual {p0, p1, p4}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public final findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public required(I)Lcom/fasterxml/jackson/databind/k;
    .locals 2

    .line 1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no indexed values"

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/k;->_reportRequiredViolation(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    return-object p0
.end method

.method public required(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 2

    .line 2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no fields"

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/k;->_reportRequiredViolation(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    return-object p0
.end method

.method public abstract serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
.end method

.method public abstract serializeWithType(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
.end method

.method public toPrettyString()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/c;->c:Lcom/fasterxml/jackson/databind/ObjectWriter;

    new-instance v1, Lcom/fasterxml/jackson/databind/node/b;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/node/b;-><init>(Lcom/fasterxml/jackson/databind/node/BaseJsonNode;)V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/c;->b:Lcom/fasterxml/jackson/databind/ObjectWriter;

    new-instance v1, Lcom/fasterxml/jackson/databind/node/b;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/node/b;-><init>(Lcom/fasterxml/jackson/databind/node/BaseJsonNode;)V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public traverse()Lcom/fasterxml/jackson/core/g;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/i;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/node/i;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method

.method public traverse(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/g;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/node/i;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/i;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method

.method public withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object p0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "Can only call `withArray()` with empty JSON Pointer on `ArrayNode`, not `%s`"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p1, p3, v1

    const-string p1, "Cannot replace context node (of type `%s`) using `withArray()` with  JSON Pointer \'%s\'"

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "Can only call `withObject()` with empty JSON Pointer on `ObjectNode`, not `%s`"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p1, p3, v1

    const-string p1, "Cannot replace context node (of type `%s`) using `withObject()` with  JSON Pointer \'%s\'"

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->_reportWrongNodeType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->from(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/NodeSerialization;

    move-result-object p0

    return-object p0
.end method
