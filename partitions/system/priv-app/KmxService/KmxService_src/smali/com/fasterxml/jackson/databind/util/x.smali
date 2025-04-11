.class public final Lcom/fasterxml/jackson/databind/util/x;
.super Lx1/c;
.source "SourceFile"


# instance fields
.field public final m:Lcom/fasterxml/jackson/core/j;

.field public final n:Z

.field public final p:Z

.field public q:Lcom/fasterxml/jackson/databind/util/y;

.field public t:I

.field public u:Lcom/fasterxml/jackson/databind/util/a0;

.field public v:Z

.field public transient w:Lcom/fasterxml/jackson/core/util/c;

.field public x:Lcom/fasterxml/jackson/core/JsonLocation;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/y;Lcom/fasterxml/jackson/core/j;ZZLcom/fasterxml/jackson/core/i;)V
    .locals 1

    invoke-direct {p0}, Lx1/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->x:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/x;->m:Lcom/fasterxml/jackson/core/j;

    new-instance p1, Lcom/fasterxml/jackson/databind/util/a0;

    if-nez p5, :cond_0

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/util/a0;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p2

    invoke-direct {p1, p5, p2}, Lcom/fasterxml/jackson/databind/util/a0;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/io/ContentReference;)V

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/util/x;->n:Z

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/util/x;->p:Z

    return-void
.end method


# virtual methods
.method public final A0()F
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final B0()I
    .locals 6

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_d

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    goto/16 :goto_6

    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_5
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    sget-object v3, Lx1/c;->e:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_6

    sget-object v3, Lx1/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    sget-object v3, Lx1/c;->k:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_9

    sget-object v3, Lx1/c;->l:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_9

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_a
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_c

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_c

    double-to-int v3, v0

    :goto_5
    return v3

    :cond_c
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final C0()J
    .locals 5

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_6

    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    sget-object v3, Lx1/c;->g:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_4

    sget-object v3, Lx1/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v2

    :cond_5
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    sget-object v3, Lx1/c;->i:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_7

    sget-object v3, Lx1/c;->j:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_7

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v2

    :cond_8
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :cond_9
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_a

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_a

    double-to-long v0, v0

    :goto_5
    return-wide v0

    :cond_a
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v2

    :cond_b
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_5
    instance-of p0, p0, Ljava/lang/Short;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E0()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/StreamReadFeature;->USE_FAST_DOUBLE_PARSER:Lcom/fasterxml/jackson/core/StreamReadFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/g;->Y0(Lcom/fasterxml/jackson/core/StreamReadFeature;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/g;->d(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/g;->i(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error: entry should be a Number, but is of type "

    invoke-static {v0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final G0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/y;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final H()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, v1, :cond_1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final H0()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    return-object p0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/g;->b:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final I1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    check-cast v0, [B

    return-object v0

    :cond_0
    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->K0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/x;->w:Lcom/fasterxml/jackson/core/util/c;

    if-nez v2, :cond_2

    new-instance v2, Lcom/fasterxml/jackson/core/util/c;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v3}, Lcom/fasterxml/jackson/core/util/c;-><init>(Lcom/fasterxml/jackson/core/util/a;I)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/util/x;->w:Lcom/fasterxml/jackson/core/util/c;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/c;->t()V

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lx1/c;->o1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/util/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public final L0()[C
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->K0()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final M0()I
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->K0()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final N0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->m:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public final P0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/y;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final U0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/util/x;->p:Z

    return p0
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->x:Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    :cond_0
    return-object p0
.end method

.method public final c1()Z
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Double;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Float;->isInfinite()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    return v2
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/x;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/x;->v:Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/util/x;->n:Z

    return p0
.end method

.method public final d1()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/x;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/y;->d(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->t()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/x;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->q:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/x;->t:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/y;->d(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iput-object v0, v1, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    new-instance v1, Lcom/fasterxml/jackson/databind/util/a0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/util/a0;-><init>(Lcom/fasterxml/jackson/databind/util/a0;I)V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    new-instance v1, Lcom/fasterxml/jackson/databind/util/a0;

    invoke-direct {v1, v0, v3}, Lcom/fasterxml/jackson/databind/util/a0;-><init>(Lcom/fasterxml/jackson/databind/util/a0;I)V

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/fasterxml/jackson/core/i;->b:I

    goto :goto_3

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    instance-of v2, v1, Lcom/fasterxml/jackson/databind/util/a0;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/fasterxml/jackson/databind/util/a0;

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    new-instance v1, Lcom/fasterxml/jackson/databind/util/a0;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/a0;-><init>()V

    goto :goto_2

    :cond_9
    new-instance v2, Lcom/fasterxml/jackson/databind/util/a0;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v2, v1, v0}, Lcom/fasterxml/jackson/databind/util/a0;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/JsonLocation;)V

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    :goto_3
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_a
    :goto_4
    return-object v1
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/x;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

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

.method public final q1()V
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/x;->u:Lcom/fasterxml/jackson/databind/util/a0;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x0()Ljava/math/BigDecimal;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/util/w;->b:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final y0()D
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->E0()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final z0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/x;->I1()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
