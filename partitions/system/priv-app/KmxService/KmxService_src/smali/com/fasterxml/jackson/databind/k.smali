.class public abstract Lcom/fasterxml/jackson/databind/k;
.super Lcom/fasterxml/jackson/databind/l;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/core/n;
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;
.end method

.method public varargs _reportRequiredViolation(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
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

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _this()Lcom/fasterxml/jackson/databind/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public asBoolean()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/k;->asBoolean(Z)Z

    move-result p0

    return p0
.end method

.method public asBoolean(Z)Z
    .locals 0

    .line 2
    return p1
.end method

.method public asDouble()D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/k;->asDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDouble(D)D
    .locals 0

    .line 2
    return-wide p1
.end method

.method public asInt()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/k;->asInt(I)I

    move-result p0

    return p0
.end method

.method public asInt(I)I
    .locals 0

    .line 2
    return p1
.end method

.method public asLong()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/k;->asLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLong(J)J
    .locals 0

    .line 2
    return-wide p1
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public asText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->asText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic at(Ljava/lang/String;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->at(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public final at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->_at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->tail()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public final at(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public binaryValue()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public booleanValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canConvertToExactIntegral()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->isIntegralNumber()Z

    move-result p0

    return p0
.end method

.method public canConvertToInt()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canConvertToLong()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public abstract deepCopy()Lcom/fasterxml/jackson/databind/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">()TT;"
        }
    .end annotation
.end method

.method public doubleValue()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public elements()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;",
            "Lcom/fasterxml/jackson/databind/k;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fieldNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public fields()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public abstract findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
.end method

.method public final findParents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/k;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
.end method

.method public final findValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/k;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation
.end method

.method public final findValuesAsText(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/k;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public floatValue()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public abstract get(I)Lcom/fasterxml/jackson/databind/k;
.end method

.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.end method

.method public has(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNonNull(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->isNull()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNonNull(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->isNull()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public intValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isArray()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigDecimal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigInteger()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isBinary()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isContainerNode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDouble()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFloat()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFloatingPointNumber()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInt()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIntegralNumber()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLong()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMissingNode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isNull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNumber()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isObject()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPojo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShort()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTextual()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValueNode()Z
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/databind/j;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->elements()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public longValue()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->path(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public abstract path(I)Lcom/fasterxml/jackson/databind/k;
.end method

.method public abstract path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
.end method

.method public require()Lcom/fasterxml/jackson/databind/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->_this()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public requireNonNull()Lcom/fasterxml/jackson/databind/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->_this()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public final requiredAt(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;
    .locals 4

    .line 1
    move-object v1, p0

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/k;->_at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "No node at \'%s\' (unmatched part: \'%s\')"

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/k;->_reportRequiredViolation(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->tail()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    goto :goto_0
.end method

.method public requiredAt(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->requiredAt(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public shortValue()S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public textValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`JsonNode` not of type `ObjectNode` (but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), cannot call `with(String)` on it"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`JsonNode` not of type `ObjectNode` (but `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")`, cannot call `withArray()` on it"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final withArray(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;->NULLS:Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/k;->withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p0

    return-object p0
.end method

.method public abstract withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.end method

.method public withArray(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/k;->withArray(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p0

    return-object p0
.end method

.method public final withObject(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;->NULLS:Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/k;->withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public abstract withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.end method

.method public final withObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->withObject(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public final withObject(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/k;->withObject(Lcom/fasterxml/jackson/core/JsonPointer;Lcom/fasterxml/jackson/databind/JsonNode$OverwriteMode;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method
