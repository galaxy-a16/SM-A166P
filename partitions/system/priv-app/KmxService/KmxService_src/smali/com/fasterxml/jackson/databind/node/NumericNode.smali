.class public abstract Lcom/fasterxml/jackson/databind/node/NumericNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final asDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asDouble(D)D
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public final asInt()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result p0

    return p0
.end method

.method public final asInt(I)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result p0

    return p0
.end method

.method public final asLong()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asLong(J)J
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public abstract bigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract canConvertToInt()Z
.end method

.method public abstract canConvertToLong()Z
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract doubleValue()D
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object p0
.end method

.method public abstract intValue()I
.end method

.method public isNaN()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract longValue()J
.end method

.method public abstract numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method

.method public abstract numberValue()Ljava/lang/Number;
.end method
