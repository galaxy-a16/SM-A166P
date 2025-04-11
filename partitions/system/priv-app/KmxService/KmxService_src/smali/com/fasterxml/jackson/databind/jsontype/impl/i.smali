.class public Lcom/fasterxml/jackson/databind/jsontype/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsontype/i;


# instance fields
.field protected _customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/h;

.field protected _defaultImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

.field protected _includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field protected _typeIdVisible:Z

.field protected _typeProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/i;Ljava/lang/Class;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/h;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/h;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    return-void
.end method

.method public static noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/h;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowPrimitiveTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;
    .locals 14

    move-object v7, p0

    iget-object v0, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->allowPrimitiveTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->verifyBaseTypeValidity(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->idResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/h;

    move-result-object v9

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->defineDefaultImpl(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    iget-object v0, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;

    move-object v7, v0

    move-object/from16 v8, p2

    move-object v10, v12

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Collection;)V

    return-object v0

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:[I

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;

    iget-object v10, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iget-boolean v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    move-object v7, v0

    move-object/from16 v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/h;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;

    iget-object v10, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iget-boolean v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    move-object v7, v0

    move-object/from16 v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/h;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    :cond_6
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;

    iget-object v10, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iget-boolean v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    iget-object v13, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-object v7, v0

    move-object/from16 v8, p2

    invoke-direct/range {v7 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/h;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)V

    return-object v0

    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;

    iget-object v10, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    iget-boolean v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    move-object v7, v0

    move-object/from16 v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/h;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->allowPrimitiveTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/jsontype/impl/b;->c:Lcom/fasterxml/jackson/databind/jsontype/impl/b;

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->idResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/h;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:[I

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/c;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/c;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V

    return-object p2

    :cond_5
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    invoke-direct {p0, p1, v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V

    return-object p0

    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V

    return-object p2

    :cond_7
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    const/4 p2, 0x0

    invoke-direct {p0, p1, v2, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V

    return-object p0
.end method

.method public bridge synthetic defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/i;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    return-object p0
.end method

.method public defineDefaultImpl(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    if-eqz v0, :cond_4

    const-class v1, Ljava/lang/Void;

    if-eq v0, v1, :cond_3

    const-class v1, Lg2/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSuperTypeOf(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object p2

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result p0

    if-nez p0, :cond_5

    return-object p2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    return-object p0
.end method

.method public getTypeProperty()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    return-object p0
.end method

.method public idResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/fasterxml/jackson/databind/jsontype/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 p3, 0x0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Do not know how to construct standard type id resolver for idType: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eq p5, p6, :cond_b

    if-eqz p5, :cond_3

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz p4, :cond_a

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz p5, :cond_7

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p6, :cond_4

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    new-instance p4, Lcom/fasterxml/jackson/databind/jsontype/impl/l;

    invoke-direct {p4, p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V

    return-object p4

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_c
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/g;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/g;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-object p0

    :cond_d
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/f;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot build, \'init()\' not yet called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "includeAs cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/h;)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/h;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/h;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/h;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "idType cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTypeIdVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    return p0
.end method

.method public reportInvalidBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "Configured `PolymorphicTypeValidator` (of type %s) denied resolution of all subtypes of base type %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPolymorphicTypeValidator()Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeIdVisible:Z

    return-object p0
.end method

.method public bridge synthetic typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_typeProperty:Ljava/lang/String;

    return-object p0
.end method

.method public verifyBaseTypeValidity(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;->validateBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->reportInvalidBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    if-ne v1, p0, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/i;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->_defaultImpl:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    const-string v1, "withDefaultImpl"

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/h;->F(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/i;Ljava/lang/Class;)V

    return-object v0
.end method
