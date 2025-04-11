.class abstract Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/k;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/i;"
    }
.end annotation


# instance fields
.field protected final _mergeArrays:Z

.field protected final _mergeObjects:Z

.field protected final _supportsUpdates:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeArrays:Z

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeObjects:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeArrays:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeObjects:Z

    return-void
.end method

.method private static _shouldMerge(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract _createWithMerge(ZZ)Lcom/fasterxml/jackson/databind/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation
.end method

.method public final _deserializeAnyScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;
    .locals 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromEmbedded(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0

    nop

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

.method public final _deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/g;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Lcom/fasterxml/jackson/databind/deser/std/a;",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result v0

    sget v1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_INT_COERCIONS:I

    and-int v12, v0, v1

    move-object/from16 v0, p5

    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v2

    move-object v15, v0

    move-object v7, v1

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    if-eq v0, v14, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    move-object/from16 v6, p2

    :goto_1
    move-object v5, v0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;->READ_NULL_PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;

    move-object/from16 v6, p2

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    move-object/from16 v6, p2

    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    move-object/from16 v6, p2

    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    move-object/from16 v6, p2

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    move-object/from16 v6, p2

    invoke-virtual {v8, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/g;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    move-object/from16 v6, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {v7, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v5

    move-object v5, v7

    move-object/from16 v6, v16

    move-object v14, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/k;)V

    goto :goto_4

    :cond_3
    :goto_3
    move-object v14, v7

    :goto_4
    move-object v7, v14

    goto :goto_6

    :cond_4
    move-object v14, v7

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v13

    invoke-virtual {v14, v4, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/k;)V

    :cond_5
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/a;->a(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    move-object v0, v13

    goto/16 :goto_b

    :cond_6
    move-object v14, v7

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v7

    invoke-virtual {v14, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v14, v7

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/k;)V

    goto :goto_5

    :cond_7
    move-object v14, v7

    :goto_5
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/a;->a(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    move-object v7, v14

    move-object v15, v7

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_6
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v3

    :goto_8
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_7

    :pswitch_7
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v2

    goto :goto_9

    :pswitch_8
    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v2

    :goto_9
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v3

    goto :goto_8

    :pswitch_a
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v3

    goto :goto_8

    :pswitch_b
    const/4 v2, 0x1

    invoke-virtual {v8, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/g;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v3

    goto :goto_8

    :pswitch_c
    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    goto :goto_8

    :cond_a
    :pswitch_d
    iget v0, v11, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    iget-object v1, v11, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v0, v0, -0x1

    iput v0, v11, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    aget-object v0, v1, v0

    goto :goto_b

    :pswitch_e
    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/a;->a(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_a

    :pswitch_f
    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/a;->a(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    :goto_b
    if-nez v0, :cond_0

    return-object p5

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final _deserializeObjectAtName(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 15

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeAnyScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v14

    :goto_1
    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v9 .. v14}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    :goto_2
    move-object v7, v0

    invoke-virtual {v8, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/k;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    return-object v8
.end method

.method public final _deserializeRareScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromEmbedded(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public final _fromEmbedded(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;
    .locals 1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, [B

    if-ne p2, v0, :cond_1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p2, p1, Lcom/fasterxml/jackson/databind/util/u;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->rawValueNode(Lcom/fasterxml/jackson/databind/util/u;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p2, p1, Lcom/fasterxml/jackson/databind/k;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/fasterxml/jackson/databind/k;

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0
.end method

.method public final _fromFloat(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->c1()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y0()D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->A0()F

    move-result p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->y0()D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0
.end method

.method public final _fromInt(Lcom/fasterxml/jackson/core/g;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->C0()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->C0()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0
.end method

.method public final _fromInt(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result p0

    sget p2, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_INT_COERCIONS:I

    and-int/2addr p2, p0

    if-eqz p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->C0()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p0

    return-object p0
.end method

.method public _handleDuplicateField(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/k;)V
    .locals 1

    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p4, p0, p1

    const-class p1, Lcom/fasterxml/jackson/databind/k;

    const-string v0, "Duplicate field \'%s\' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled"

    invoke-virtual {p2, p1, v0, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p6}, Lcom/fasterxml/jackson/databind/k;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, p6

    check-cast p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p0, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p5, p4, p6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p0, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p5, p4, p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    :cond_2
    :goto_0
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    const-class p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultMergeable(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p2

    const-class v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultMergeable(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/k;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultMergeable(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_shouldMerge(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p2

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_shouldMerge(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeArrays:Z

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeObjects:Z

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_createWithMerge(ZZ)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object p0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final updateObject(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/a;)Lcom/fasterxml/jackson/databind/k;
    .locals 8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/g;->V0(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v7

    :goto_1
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeObjects:Z

    if-eqz v3, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->updateObject(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/a;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    if-eq v1, v2, :cond_a

    goto/16 :goto_3

    :cond_2
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_mergeArrays:Z

    if-eqz v3, :cond_3

    move-object v6, v2

    check-cast v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    goto :goto_4

    :cond_3
    if-nez v1, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x6

    if-eq v1, v3, :cond_7

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    goto :goto_3

    :pswitch_0
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;->READ_NULL_PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, p2, v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v6

    goto :goto_2

    :cond_9
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v1

    :goto_3
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/k;)Lcom/fasterxml/jackson/databind/k;

    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d1()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    return-object p3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
