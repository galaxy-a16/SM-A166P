.class public Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Lcom/fasterxml/jackson/databind/util/z;",
        ">;"
    }
.end annotation

.annotation runtime Lg2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/util/z;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    const-string p1, "any"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/fasterxml/jackson/databind/util/z;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 8

    .line 1
    iget-boolean p0, p1, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 2
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    if-eqz p0, :cond_1

    .line 3
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/util/y;->d:Ljava/util/TreeMap;

    if-eqz v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    move v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/4 v3, -0x1

    :goto_2
    add-int/2addr v3, p3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_5

    .line 4
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    if-eqz p0, :cond_4

    .line 5
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/util/y;->d:Ljava/util/TreeMap;

    if-eqz v2, :cond_3

    move v2, p3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    move v2, p3

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    move v3, v0

    .line 6
    :cond_5
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/util/y;->d(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v5, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/util/y;->c(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/core/f;->J0(Ljava/lang/Object;)V

    .line 7
    :cond_7
    iget-object v6, v1, Lcom/fasterxml/jackson/databind/util/y;->d:Ljava/util/TreeMap;

    if-nez v6, :cond_8

    move-object v6, v5

    goto :goto_6

    :cond_8
    add-int v7, v3, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_9

    .line 8
    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/core/f;->Z0(Ljava/lang/Object;)V

    :cond_9
    sget-object v6, Lcom/fasterxml/jackson/databind/util/w;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    iget-object v6, v1, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Internal error: should never end up through this code path"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :pswitch_0
    aget-object v4, v6, v3

    .line 10
    instance-of v5, v4, Lcom/fasterxml/jackson/databind/util/u;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/fasterxml/jackson/databind/util/u;

    .line 11
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/util/u;->a:Ljava/lang/String;

    .line 12
    instance-of v5, v4, Lcom/fasterxml/jackson/databind/m;

    if-eqz v5, :cond_a

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_a
    instance-of v5, v4, Lcom/fasterxml/jackson/core/l;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/fasterxml/jackson/core/l;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->O0(Lcom/fasterxml/jackson/core/l;)V

    goto :goto_2

    :cond_b
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->P0(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_c
    instance-of v5, v4, Lcom/fasterxml/jackson/databind/m;

    if-eqz v5, :cond_d

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->h0(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/f;->b0(Z)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/f;->b0(Z)V

    goto/16 :goto_2

    .line 15
    :pswitch_3
    aget-object v4, v6, v3

    .line 16
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_e

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/fasterxml/jackson/core/f;->B0(D)V

    goto/16 :goto_2

    :cond_e
    instance-of v6, v4, Ljava/math/BigDecimal;

    if-eqz v6, :cond_f

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->G0(Ljava/math/BigDecimal;)V

    goto/16 :goto_2

    :cond_f
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_10

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->C0(F)V

    goto/16 :goto_2

    :cond_10
    if-nez v4, :cond_11

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->A0()V

    goto/16 :goto_2

    :cond_11
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_12

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->F0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    new-array p0, p3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    const-string p2, "Unrecognized value type for VALUE_NUMBER_FLOAT: %s, cannot serialize"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v5

    .line 17
    :pswitch_5
    aget-object v4, v6, v3

    .line 18
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_13

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_7

    :cond_13
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_14

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->H0(Ljava/math/BigInteger;)V

    goto/16 :goto_2

    :cond_14
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_15

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/fasterxml/jackson/core/f;->E0(J)V

    goto/16 :goto_2

    :cond_15
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_16

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->I0(S)V

    goto/16 :goto_2

    :cond_16
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_7
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->D0(I)V

    goto/16 :goto_2

    .line 19
    :pswitch_6
    aget-object v4, v6, v3

    .line 20
    instance-of v5, v4, Lcom/fasterxml/jackson/core/l;

    if-eqz v5, :cond_17

    check-cast v4, Lcom/fasterxml/jackson/core/l;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->X0(Lcom/fasterxml/jackson/core/l;)V

    goto/16 :goto_2

    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :pswitch_7
    aget-object v4, v6, v3

    .line 22
    instance-of v5, v4, Lcom/fasterxml/jackson/core/l;

    if-eqz v5, :cond_18

    check-cast v4, Lcom/fasterxml/jackson/core/l;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->y0(Lcom/fasterxml/jackson/core/l;)V

    goto/16 :goto_2

    :cond_18
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->w0()V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->Q0()V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->x0()V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->T0()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/fasterxml/jackson/databind/util/z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serialize(Lcom/fasterxml/jackson/databind/util/z;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public final serializeWithType(Lcom/fasterxml/jackson/databind/util/z;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p4, v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/k;->d(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lf2/c;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serialize(Lcom/fasterxml/jackson/databind/util/z;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/util/z;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serializeWithType(Lcom/fasterxml/jackson/databind/util/z;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method
