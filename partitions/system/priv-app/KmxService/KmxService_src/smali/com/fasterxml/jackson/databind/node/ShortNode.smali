.class public Lcom/fasterxml/jackson/databind/node/ShortNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "SourceFile"


# instance fields
.field protected final _value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-short p1, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return-void
.end method

.method public static valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/node/ShortNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ShortNode;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public asText()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/h;->n(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public canConvertToInt()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canConvertToLong()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public doubleValue()D
    .locals 2

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-double v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ShortNode;

    iget-short p1, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-float p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return p0
.end method

.method public intValue()I
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return p0
.end method

.method public isIntegralNumber()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShort()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public longValue()J
    .locals 2

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->I0(S)V

    return-void
.end method

.method public shortValue()S
    .locals 0

    iget-short p0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return p0
.end method
