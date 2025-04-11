.class final Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lg2/a;
.end annotation


# static fields
.field protected static final NO_OBJECTS:[Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L

.field public static final std:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;


# instance fields
.field protected final _nonMerging:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->NO_OBJECTS:[Ljava/lang/Object;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->std:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_nonMerging:Z

    return-void
.end method

.method private _deserializeAnyScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x0

    return-object p0

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _deserializeNR(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/n;)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_INT_COERCIONS:I

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->hasSomeOfFeatures(I)Z

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    move-object v2, p3

    :goto_0
    iget-boolean v3, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->b:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :pswitch_1
    move-object v6, v5

    goto :goto_2

    :pswitch_2
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_3
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_4
    sget-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object v6

    goto :goto_2

    :pswitch_5
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coerceIntegral(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object v6

    goto :goto_2

    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-boolean v7, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v7, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    :cond_3
    iget-object v7, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iput-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->d:Ljava/lang/String;

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/n;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;)V

    goto/16 :goto_8

    :cond_5
    iput-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->d:Ljava/lang/String;

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/n;

    iget-boolean v6, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    invoke-direct {v3, v2, v6}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V

    move-object v2, v3

    goto :goto_1

    :cond_6
    if-ne v2, p3, :cond_8

    iget-object p0, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_7

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_7
    return-object p0

    :cond_8
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_3

    :cond_9
    iput-object v5, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    :goto_3
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->a:Lcom/fasterxml/jackson/databind/deser/std/n;

    iget-boolean v4, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->b:Z

    if-eqz v4, :cond_a

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_c
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :pswitch_9
    move-object v3, v5

    goto :goto_5

    :pswitch_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_c
    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_5

    :pswitch_d
    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coerceIntegral(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object v3

    goto :goto_5

    :pswitch_e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->b(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_f
    if-ne v2, p3, :cond_11

    iget-object p0, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    if-nez p0, :cond_f

    if-eqz v1, :cond_e

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->NO_OBJECTS:[Ljava/lang/Object;

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_6

    :cond_f
    if-eqz v1, :cond_10

    sget-object p1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->NO_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :cond_10
    :goto_6
    return-object p0

    :cond_11
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    if-eqz v1, :cond_12

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->NO_OBJECTS:[Ljava/lang/Object;

    goto :goto_7

    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_7

    :cond_13
    if-eqz v1, :cond_14

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->NO_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    :cond_14
    iput-object v5, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    :goto_7
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->a:Lcom/fasterxml/jackson/databind/deser/std/n;

    iget-boolean v4, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->b:Z

    if-eqz v4, :cond_15

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/n;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;)V

    goto :goto_8

    :pswitch_11
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/n;

    iget-boolean v4, v2, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    invoke-direct {v3, v2, v4}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V

    :goto_8
    move-object v2, v3

    goto/16 :goto_0

    :goto_9
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private _deserializeObjectAtName(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result v0

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v2, :cond_2

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeAnyScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/n;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;)V

    goto :goto_1

    :cond_2
    iget-object p0, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_3
    return-object p0

    :cond_4
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/n;

    iget-boolean v3, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    invoke-direct {v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V

    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeNR(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/n;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    iget-boolean v3, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/std/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    :cond_6
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object p0, v1, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_8

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_8
    return-object p0
.end method

.method private _squashDups(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    instance-of p0, p3, Ljava/util/List;

    if-eqz p0, :cond_0

    move-object p0, p3

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static instance(Z)Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;-><init>(Z)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->std:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;

    return-object p0
.end method


# virtual methods
.method public _mapObjectWithDups(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/g;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_squashDups(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p7, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p7, p5, p4}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_squashDups(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    return-object v1

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_INT_COERCIONS:I

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->hasSomeOfFeatures(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coerceIntegral(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeObjectAtName(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_9
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/n;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeNR(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_a
    new-instance p0, Ljava/util/LinkedHashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object p0

    .line 4
    :pswitch_b
    sget-object v0, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result v0

    .line 5
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/n;

    invoke-direct {v2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/n;-><init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V

    .line 6
    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeNR(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_nonMerging:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    return-object p3

    :cond_2
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_a

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    :cond_4
    return-object p3

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    return-object p3

    :cond_6
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    if-eq v3, v2, :cond_9

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return-object p3

    :cond_a
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_deserializeAnyScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializerNR;->_nonMerging:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
