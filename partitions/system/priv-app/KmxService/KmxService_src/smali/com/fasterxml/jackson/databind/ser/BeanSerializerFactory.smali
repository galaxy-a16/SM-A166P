.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.source "SourceFile"


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    return-void
.end method


# virtual methods
.method public _constructWriter(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/ser/i;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    new-instance v2, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v9

    move-object v4, v2

    move-object v6, v10

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    invoke-virtual {v0, v1, v14}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    instance-of v5, v4, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {v5, v1}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_0
    invoke-virtual {v1, v4, v2}, Lcom/fasterxml/jackson/databind/z;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v7

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v10}, Lf2/a;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    invoke-virtual {v0, v10, v2, v14}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    invoke-virtual {v0, v10, v4, v14}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v8

    iget-object v4, v13, Lcom/fasterxml/jackson/databind/ser/i;->b:Lcom/fasterxml/jackson/databind/c;

    const/4 v0, 0x0

    move/from16 v5, p4

    :try_start_0
    invoke-virtual {v13, v14, v5, v10}, Lcom/fasterxml/jackson/databind/ser/i;->a(Lcom/fasterxml/jackson/databind/introspect/b;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_5

    if-nez v5, :cond_3

    move-object v5, v10

    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "serialization type "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has no content"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, v6, v9}, Lcom/fasterxml/jackson/databind/z;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-object v9, v2

    goto :goto_2

    :cond_5
    move-object v9, v5

    :goto_2
    if-nez v9, :cond_6

    move-object v2, v10

    goto :goto_3

    :cond_6
    move-object v2, v9

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v2, "could not determine property type"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/fasterxml/jackson/databind/z;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_f

    :cond_7
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/b;->getRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v11, v13, Lcom/fasterxml/jackson/databind/ser/i;->e:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v12, v13, Lcom/fasterxml/jackson/databind/ser/i;->a:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v12, v6, v5, v11}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultInclusion(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v6

    sget-object v11, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v6, v11, :cond_8

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    :cond_8
    sget-object v11, Lcom/fasterxml/jackson/databind/ser/h;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v11, v6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_f

    const/4 v15, 0x2

    if-eq v6, v15, :cond_c

    const/4 v15, 0x3

    if-eq v6, v15, :cond_d

    const/4 v15, 0x4

    if-eq v6, v15, :cond_b

    const/4 v5, 0x5

    if-eq v6, v5, :cond_9

    goto :goto_4

    :cond_9
    move v0, v11

    :goto_4
    sget-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto/16 :goto_d

    :cond_a
    move v11, v0

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueFilter()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v2}, Lf2/a;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto/16 :goto_c

    :cond_e
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_f
    iget-boolean v0, v13, Lcom/fasterxml/jackson/databind/ser/i;->f:Z

    if-eqz v0, :cond_18

    iget-object v0, v13, Lcom/fasterxml/jackson/databind/ser/i;->d:Ljava/lang/Object;

    sget-object v5, Lcom/fasterxml/jackson/databind/ser/i;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    move-object v6, v4

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v11, v6, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v15

    iget-object v15, v15, Lp1/v;->b:Ljava/lang/Object;

    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez v15, :cond_10

    const/4 v0, 0x0

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    :cond_11
    :try_start_1
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    if-nez v0, :cond_12

    move-object v0, v5

    :cond_12
    iput-object v0, v13, Lcom/fasterxml/jackson/databind/ser/i;->d:Ljava/lang/Object;

    goto :goto_8

    :catch_0
    move-exception v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_7

    :cond_13
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->C(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->E(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate bean of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    :goto_8
    if-ne v0, v5, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    iget-object v0, v13, Lcom/fasterxml/jackson/databind/ser/i;->d:Ljava/lang/Object;

    :goto_9
    move-object v5, v0

    if-eqz v5, :cond_18

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v12, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    :cond_16
    :try_start_2
    invoke-virtual {v14, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-interface/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_a

    :cond_17
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->C(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->E(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get property \'"

    const-string v3, "\' of default "

    invoke-static {v2, v1, v3}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-static {v2}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    :goto_b
    move/from16 v16, v2

    move-object v2, v0

    move/from16 v0, v16

    if-nez v2, :cond_19

    move-object v0, v2

    :goto_c
    const/4 v2, 0x1

    move v11, v2

    goto :goto_e

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v2

    :cond_1a
    :goto_d
    move v11, v0

    move-object v0, v2

    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/q;->f()[Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/c;->a()[Ljava/lang/Class;

    move-result-object v2

    :cond_1b
    move-object v12, v2

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v4, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v5, v2, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    new-instance v15, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v6, v10

    move v10, v11

    move-object v11, v0

    invoke-direct/range {v2 .. v12}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)V

    iget-object v0, v13, Lcom/fasterxml/jackson/databind/ser/i;->c:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v14, v2}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/o;)V

    :cond_1c
    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/p;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->unwrappingWriter(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v15

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/fasterxml/jackson/databind/z;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    move-object v15, v0

    check-cast v15, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    :cond_1d
    :goto_10
    return-object v15
.end method

.method public _createSerializer2(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {p0, v0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;)Z

    move-result p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildContainerSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_1
    invoke-virtual {p2}, Lf2/a;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/o;

    invoke-interface {v3, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/o;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_4
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v2

    :cond_8
    :goto_1
    return-object v1
.end method

.method public _findUnsupportedTypeSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-static {p2}, Lg2/m;->c(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;

    invoke-direct {p1, p2, p0}, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _isUnserializableJacksonType(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/core/TokenStreamFactory;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/fasterxml/jackson/core/f;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_findUnsupportedTypeSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_isUnserializableJacksonType(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/ser/d;

    move-result-object v5

    iput-object v4, v5, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v1, v3, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanProperties(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/d;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/d;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v7, v4, v9, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Ljava/util/List;)V

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v10

    :cond_5
    :goto_1
    invoke-virtual {v0, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->filterUnwantedJDKProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v10

    :cond_7
    :goto_2
    invoke-virtual {v0, v1, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructObjectIdHandler(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object v7

    iput-object v7, v5, Lcom/fasterxml/jackson/databind/ser/d;->h:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object v6, v5, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-virtual {v0, v4, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lcom/fasterxml/jackson/databind/ser/d;->f:Ljava/lang/Object;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x0

    iget-object v8, v8, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-eqz v8, :cond_11

    iget-boolean v12, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v12, :cond_8

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_8
    iget-object v12, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-gt v12, v7, :cond_9

    iget-object v12, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    goto :goto_3

    :cond_9
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Multiple \'any-getter\' methods defined (%s vs %s)"

    invoke-virtual {v8, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :cond_a
    move-object v12, v10

    :goto_3
    const-class v13, Ljava/util/Map;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/introspect/b;->getRawType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Invalid \'any-getter\' annotation on method %s(): return type is not instance of java.util.Map"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v12, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v12, :cond_d

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_d
    iget-object v12, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-gt v12, v7, :cond_e

    iget-object v8, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-object v12, v8

    goto :goto_4

    :cond_e
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, v8, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Multiple \'any-getter\' fields defined (%s vs %s)"

    invoke-virtual {v8, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :cond_f
    move-object v12, v10

    :goto_4
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/introspect/b;->getRawType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_10

    :goto_5
    move-object v8, v12

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Invalid \'any-getter\' annotation on field \'%s\': type is not instance of java.util.Map"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v8, v10

    :goto_6
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v16

    invoke-virtual {v0, v1, v8}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v12

    if-nez v12, :cond_12

    const/4 v12, 0x0

    sget-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v4, v14}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-static/range {v12 .. v18}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v12

    goto :goto_7

    :cond_12
    move-object/from16 v20, v15

    :goto_7
    move-object v15, v12

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v13

    new-instance v14, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    const/16 v16, 0x0

    sget-object v17, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v12, v14

    move-object v6, v14

    move-object/from16 v14, v20

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    new-instance v12, Lcom/fasterxml/jackson/databind/ser/a;

    invoke-direct {v12, v6, v8, v7}, Lcom/fasterxml/jackson/databind/ser/a;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty$Std;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/o;)V

    iput-object v12, v5, Lcom/fasterxml/jackson/databind/ser/d;->e:Lcom/fasterxml/jackson/databind/ser/a;

    :cond_13
    invoke-virtual {v0, v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/d;)V

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_8

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v10

    :cond_15
    :goto_8
    :try_start_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/d;->a()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result v1

    iget-object v6, v5, Lcom/fasterxml/jackson/databind/ser/d;->a:Lcom/fasterxml/jackson/databind/c;

    if-eqz v1, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/r;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v0, v6, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->createDummy(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0

    :cond_16
    move/from16 v1, p4

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, v9, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/a;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v7, 0x1

    goto :goto_9

    :cond_17
    move v7, v11

    :goto_9
    if-eqz v7, :cond_18

    iget-object v0, v6, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->createDummy(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0

    :cond_18
    return-object v1

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    aput-object v4, v0, v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "Failed to construct BeanSerializer for %s: (%s) %s"

    invoke-virtual {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/z;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/o;

    return-object v0
.end method

.method public constructBeanSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/ser/d;
    .locals 0

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/d;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/d;-><init>(Lcom/fasterxml/jackson/databind/c;)V

    return-object p0
.end method

.method public constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/a;->a(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object p0

    return-object p0
.end method

.method public constructObjectIdHandler(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;"
        }
    .end annotation

    move-object p0, p2

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->i:Lcom/fasterxml/jackson/databind/introspect/a0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/a0;->e:Z

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/a0;->a:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/a0;->b:Ljava/lang/Class;

    if-ne v5, v1, :cond_4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v2

    :goto_0
    if-eq v4, v1, :cond_3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v4, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p3, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {p2, p0, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/a0;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    invoke-static {p1, v0, p2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/c;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "Invalid Object Id definition for %s: cannot find property with name %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/e;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p3, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    aget-object p3, p3, v2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/e;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/introspect/a0;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object p0

    invoke-static {p3, v4, p0, v3}, Lcom/fasterxml/jackson/databind/ser/impl/c;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p0

    return-object p0
.end method

.method public constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/ser/i;
    .locals 0

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/i;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/i;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)V

    return-object p0
.end method

.method public createSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v5, v1

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v5, v5, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v3, v0, v5, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x1

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    :cond_3
    move v4, v5

    :goto_1
    move-object p2, v1

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v6, p2, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v6, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    iget-object v7, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/introspect/p;->e(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/j;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, p1, v3, v1, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object v4, p2

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/deser/impl/g;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p1, v4, v1, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    :cond_7
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {p0, p2, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, p2}, Lcom/fasterxml/jackson/databind/z;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public customSerializers()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/o;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializers()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p0

    move-object v0, p2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, v1}, Lh3/a;->S(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-object p3
.end method

.method public filterUnwantedJDKProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    iget-object p0, p2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    const-class p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    instance-of v0, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isEmpty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    if-ne p2, p1, :cond_0

    invoke-interface {p3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findBeanProperties(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/d;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/ser/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)V

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0, v1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;)Z

    move-result v2

    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/ser/i;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/q;->v()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_2

    iget-object v4, p3, Lcom/fasterxml/jackson/databind/ser/d;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v4, :cond_3

    iput-object v3, p3, Lcom/fasterxml/jackson/databind/ser/d;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Multiple type ids specified with "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/fasterxml/jackson/databind/ser/d;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/q;->e()Lcom/fasterxml/jackson/databind/b;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/b;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v5, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v4, :cond_7

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_2

    :cond_7
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    :goto_2
    move-object v9, v3

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/ser/i;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method public findBeanSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p0

    invoke-virtual {p0, p2, p3, v0}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p2, p1, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "net.sf.cglib.proxy."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const-string p1, "org.hibernate.proxy."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/d;)V
    .locals 9

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v6

    aput-object v6, v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    aput-object v6, v2, v4

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-nez v5, :cond_4

    return-void

    :cond_4
    iget-object p0, p2, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v1, p0, :cond_5

    iput-object v2, p2, Lcom/fasterxml/jackson/databind/ser/d;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/d;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/d;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/ser/d;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/jsontype/k;->c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/jsontype/k;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p3

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eq v1, p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->wouldConflictWithName(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/k;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method public removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->a()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->t()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/m;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    if-ne v0, v1, :cond_1

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subtype of BeanSerializerFactory ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") has not properly overridden method \'withAdditionalSerializers\': cannot instantiate subtype with additional serializer definitions"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
