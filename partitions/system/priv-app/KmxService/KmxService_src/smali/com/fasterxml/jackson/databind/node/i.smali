.class public final Lcom/fasterxml/jackson/databind/node/i;
.super Lx1/c;
.source "SourceFile"


# instance fields
.field public final m:Lcom/fasterxml/jackson/core/j;

.field public n:Lcom/fasterxml/jackson/databind/node/g;

.field public p:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/core/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx1/c;-><init>(I)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/i;->m:Lcom/fasterxml/jackson/core/j;

    new-instance p2, Lcom/fasterxml/jackson/databind/node/f;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/node/f;-><init>(Lcom/fasterxml/jackson/databind/k;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    return-void
.end method


# virtual methods
.method public final A0()F
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final B0()I
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->canConvertToInt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lx1/c;->E1()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C0()J
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->canConvertToLong()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lx1/c;->G1()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-interface {p0}, Lcom/fasterxml/jackson/core/n;->numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    return-object p0
.end method

.method public final E0()Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->numberValue()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final H()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final H0()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    return-object p0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/g;->b:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final I1()Lcom/fasterxml/jackson/databind/k;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/g;->j()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/TextNode;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/TextNode;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->binaryValue()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final J1()Lcom/fasterxml/jackson/databind/k;
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->isNumber()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/n;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/node/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/k;->asText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->numberValue()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->textValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/g;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L0()[C
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->K0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public final M0()I
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->K0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final N0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/i;->m:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object p0
.end method

.method public final U0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object p0
.end method

.method public final c1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->isNaN()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/g;->k()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/databind/node/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/g;->l()Lcom/fasterxml/jackson/databind/node/d;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/g;->m()Lcom/fasterxml/jackson/databind/node/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    :goto_1
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/fasterxml/jackson/databind/node/g;->d:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/i;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-virtual {p2, p0, p1, v0}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    array-length p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public final n1()Lcom/fasterxml/jackson/core/g;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_0
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/i;->n:Lcom/fasterxml/jackson/databind/node/g;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final q1()V
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x0()Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final y0()D
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->J1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final z0()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/i;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/i;->I1()Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->isPojo()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/k;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/BinaryNode;->binaryValue()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
