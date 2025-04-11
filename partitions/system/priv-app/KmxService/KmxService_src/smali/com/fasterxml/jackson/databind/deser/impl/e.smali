.class public final Lcom/fasterxml/jackson/databind/deser/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/JavaType;

.field public final b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

.field public final c:Ljava/util/Map;

.field public final d:[Ljava/lang/String;

.field public final e:[Lcom/fasterxml/jackson/databind/util/z;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/impl/d;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->c:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/e;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->c:Ljava/util/Map;

    array-length p1, v0

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    new-array p1, p1, [Lcom/fasterxml/jackson/databind/util/z;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3

    if-nez p5, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    const-string v2, "Internal error in external Type Id handling: `null` type id passed"

    invoke-virtual {p2, v1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    aget-object v0, v0, p4

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    if-ne v1, v2, :cond_1

    aget-object p0, p0, p4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/z;->Q0()V

    invoke-virtual {v1, p5}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/z;->n1(Lcom/fasterxml/jackson/core/g;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/z;->w0()V

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    aget-object p0, p0, p4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    aget-object v0, v0, p6

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    if-eqz p4, :cond_1

    aget-object v2, v1, p6

    if-eqz v2, :cond_1

    move v0, p3

    :cond_1
    if-eqz v0, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/e;->a(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x0

    aput-object p0, v1, p6

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    aput-object p5, p0, p6

    :goto_0
    return p3
.end method

.method public final c(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/k;Lcom/fasterxml/jackson/databind/deser/impl/h;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    array-length v5, v4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_9

    iget-object v9, v0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    aget-object v9, v9, v8

    aget-object v10, v4, v8

    const/4 v12, 0x1

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v14, v0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    if-nez v9, :cond_2

    aget-object v15, v14, v8

    if-eqz v15, :cond_8

    iget-object v15, v15, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    invoke-virtual {v15, v7}, Lcom/fasterxml/jackson/databind/util/y;->d(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v15

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v15, v11, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v11, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/jsontype/g;->hasDefaultImpl()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v11

    new-array v15, v12, [Ljava/lang/Object;

    iget-object v12, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    aput-object v12, v15, v7

    const-string v12, "Missing external type id property \'%s\'"

    invoke-virtual {v2, v13, v11, v12, v15}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v9, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/g;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v9, 0x0

    :cond_2
    :goto_1
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/g;->getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/h;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Lcom/fasterxml/jackson/databind/jsontype/h;->c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    aget-object v11, v14, v8

    if-eqz v11, :cond_5

    invoke-virtual {v11, v1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v13

    sget-object v14, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v13, v14, :cond_4

    move-object v11, v12

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/util/z;->Q0()V

    invoke-virtual {v12, v9}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lcom/fasterxml/jackson/databind/util/z;->n1(Lcom/fasterxml/jackson/core/g;)V

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/util/z;->w0()V

    invoke-virtual {v12, v1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    aget-object v12, v4, v8

    iget-object v12, v12, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v12, v11, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    :goto_3
    aput-object v11, v6, v8

    goto :goto_4

    :cond_5
    sget-object v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v7

    aget-object v11, v4, v8

    iget-object v11, v11, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const-string v11, "Missing property \'%s\' for external type id \'%s\'"

    invoke-virtual {v2, v13, v12, v11, v14}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/z;->Q0()V

    invoke-virtual {v11, v9}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/z;->w0()V

    invoke-virtual {v11, v1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    aget-object v12, v4, v8

    iget-object v12, v12, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v12, v11, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v8

    :goto_4
    iget-object v11, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v12

    if-ltz v12, :cond_8

    aget-object v12, v6, v8

    invoke-virtual {v3, v11, v12}, Lcom/fasterxml/jackson/databind/deser/impl/k;->b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v11

    if-ltz v11, :cond_8

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    const-class v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/i;

    move-result-object v9

    iget-object v14, v11, Lcom/fasterxml/jackson/databind/util/z;->b:Lcom/fasterxml/jackson/core/j;

    new-instance v15, Lcom/fasterxml/jackson/databind/util/x;

    iget-object v13, v11, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    iget-boolean v12, v11, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    iget-boolean v7, v11, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iget-object v11, v11, Lcom/fasterxml/jackson/databind/util/z;->c:Lcom/fasterxml/jackson/core/i;

    move/from16 v16, v12

    move-object v12, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v7

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lcom/fasterxml/jackson/databind/util/x;-><init>(Lcom/fasterxml/jackson/databind/util/y;Lcom/fasterxml/jackson/core/j;ZZLcom/fasterxml/jackson/core/i;)V

    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v7, v18

    invoke-virtual {v9, v7, v2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    invoke-virtual {v3, v10, v9}, Lcom/fasterxml/jackson/databind/deser/impl/k;->b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v7, p4

    invoke-virtual {v7, v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/h;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_b

    aget-object v1, v4, v7

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    if-gez v2, :cond_a

    aget-object v2, v6, v7

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    return-object v0
.end method

.method public final d(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    array-length v1, v0

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v1, :cond_9

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    aget-object v3, v3, v9

    aget-object v4, v0, v9

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    if-nez v3, :cond_5

    aget-object v6, v6, v9

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/databind/util/y;->d(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/util/z;->m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v7, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    invoke-static {v6, p2, v8}, Lcom/fasterxml/jackson/databind/jsontype/g;->deserializeIfNatural(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v7, p3, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    iget-object v6, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/jsontype/g;->hasDefaultImpl()Z

    move-result v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v8, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    iget-object v10, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-nez v6, :cond_2

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v2

    const-string v6, "Missing external type id property \'%s\' (and no \'defaultImpl\' specified)"

    invoke-virtual {p2, v7, v4, v6, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v3, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/g;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/g;->getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/h;

    move-result-object v3

    invoke-interface {v3, v4, v6}, Lcom/fasterxml/jackson/databind/jsontype/h;->c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_4

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v8, v4, v2

    const-string v5, "Invalid default type id for property \'%s\': `null` returned by TypeIdResolver"

    invoke-virtual {p2, v7, v3, v5, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v8, v6

    goto :goto_3

    :cond_5
    aget-object v6, v6, v9

    if-nez v6, :cond_8

    iget-object p0, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    iget-object p0, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    aput-object p0, v0, v5

    const-string p0, "Missing property \'%s\' for external type id \'%s\'"

    invoke-virtual {p2, p1, p3, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    :goto_2
    move-object v8, v3

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/e;->a(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final e(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 11

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->c:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    instance-of v6, v4, Ljava/util/List;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->d:[Ljava/lang/String;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->e:[Lcom/fasterxml/jackson/databind/util/z;

    if-eqz v6, :cond_3

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v9, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v2, v9, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object v1, v10, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object v1, v10, v2

    goto :goto_1

    :cond_2
    return v8

    :cond_3
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v7, v6

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->S0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    if-eqz p3, :cond_5

    aget-object v3, v10, v6

    if-eqz v3, :cond_5

    :goto_2
    move v5, v8

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object v3

    aput-object v3, v10, v6

    if-eqz p3, :cond_5

    aget-object v3, v9, v6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    aget-object v5, v9, v6

    const/4 v7, 0x0

    aput-object v7, v9, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/e;->a(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    aput-object v7, v10, v6

    :cond_6
    return v8
.end method

.method public final f(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/e;->c:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v8

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/e;->b(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/e;->b(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    return-void
.end method
