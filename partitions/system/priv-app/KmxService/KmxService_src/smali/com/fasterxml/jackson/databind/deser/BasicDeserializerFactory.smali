.class public abstract Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLASS_CHAR_SEQUENCE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_ITERABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MAP_ENTRY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SERIALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;


# instance fields
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    const-class v0, Ljava/lang/CharSequence;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    const-class v0, Ljava/lang/Iterable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    const-class v0, Ljava/util/Map$Entry;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    const-class v0, Ljava/io/Serializable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "@JsonUnwrapped"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/n;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    return-void
.end method

.method private _checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/q;)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    return p0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return p0

    :cond_3
    return v0
.end method

.method private _checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/l0;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/b;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/introspect/l0;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-object/from16 v6, p3

    invoke-interface {v6, v4}, Lcom/fasterxml/jackson/databind/introspect/l0;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v7

    new-array v8, v7, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move v9, v5

    :goto_1
    if-ge v9, v7, :cond_3

    invoke-virtual {v4, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    move-object/from16 v14, p0

    move-object/from16 v13, p4

    invoke-direct {v14, v15, v13}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v16, v18

    invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v4

    move-object v3, v8

    goto :goto_0

    :cond_5
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v5, v3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    move-object/from16 v0, p2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    array-length v1, v3

    :goto_3
    if-ge v5, v1, :cond_8

    aget-object v2, v3, v5

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/introspect/p;->h(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v8

    sget v2, Lcom/fasterxml/jackson/databind/util/v;->g:I

    const/4 v10, 0x0

    sget-object v11, Lcom/fasterxml/jackson/databind/introspect/q;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    new-instance v2, Lcom/fasterxml/jackson/databind/util/v;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v7

    move-object v6, v2

    move-object v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/fasterxml/jackson/databind/util/v;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/introspect/p;->h(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/q;
    .locals 6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/q;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/q;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p2, v3, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/b0;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_6
    invoke-static {p2, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/q;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsuitable method ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-static {v1, p1, p2}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/q;

    move-result-object p0

    return-object p0
.end method

.method private _findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private _mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/a;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/a;->findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public _addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    return-void
.end method

.method public _addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    .line 2
    iget v1, v8, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3
    iget-object v2, v8, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    if-eq v10, v1, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToProperties()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    move v3, v1

    .line 4
    :goto_0
    iget v4, v8, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    if-ge v9, v4, :cond_2

    aget-object v4, v2, v9

    iget-object v4, v4, Lva/f;->c:Ljava/lang/Object;

    check-cast v4, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    if-nez v4, :cond_1

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v9

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-ltz v1, :cond_4

    .line 5
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToDelegating()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->c(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    return-void

    .line 6
    :cond_5
    aget-object v1, v2, v9

    iget-object v3, v1, Lva/f;->a:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 7
    iget-object v1, v1, Lva/f;->c:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 8
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/a;->b:[I

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgMode()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v11, 0x0

    iget-object v15, v8, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eq v1, v10, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v1

    .line 9
    aget-object v2, v2, v9

    iget-object v2, v2, Lva/f;->b:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/q;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->u()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v11

    :goto_2
    if-nez v2, :cond_8

    if-eqz v17, :cond_7

    goto :goto_3

    :cond_7
    move v3, v9

    goto :goto_4

    :cond_8
    :goto_3
    move v3, v10

    :goto_4
    if-nez v3, :cond_a

    if-eqz v1, :cond_a

    .line 10
    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/a;->c(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/q;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    move v3, v10

    goto :goto_5

    :cond_9
    move v3, v9

    :cond_a
    :goto_5
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v2

    goto :goto_6

    :cond_b
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v15, v0, v9

    const-string v1, "Single-argument constructor (%s) is annotated but no \'mode\' defined; `CreatorDetector`configured with `SingleArgConstructor.REQUIRE_MODE`"

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v12, v13, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/a;->c(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v14

    if-nez v14, :cond_d

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v6, v14

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/a;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    :cond_d
    move v3, v10

    goto :goto_6

    :cond_e
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move v3, v9

    move-object v14, v11

    :goto_6
    if-eqz v3, :cond_f

    new-array v1, v10, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v2, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v3, v15

    move v15, v2

    invoke-virtual/range {v11 .. v17}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v3, v10, v1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-void

    :cond_f
    move-object/from16 v1, p0

    move-object v3, v15

    invoke-virtual {v1, v0, v3, v10, v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    .line 11
    iput-object v11, v0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    :cond_10
    return-void
.end method

.method public _addExplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Z)V
    .locals 11

    iget-object v6, p2, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    iget-object v7, p2, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    move-object v0, v6

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v0

    iget-object v0, v0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    iget-boolean v3, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->c:Z

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_2
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v0, v1, v2

    :cond_3
    move-object v0, v6

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v0

    iget-object v0, v0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p2, Lcom/fasterxml/jackson/databind/deser/c;->e:Ljava/util/Map;

    if-nez v1, :cond_7

    if-eqz p3, :cond_4

    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->c:Lcom/fasterxml/jackson/databind/introspect/l0;

    invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/l0;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->h:Ljava/util/LinkedList;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->h:Ljava/util/LinkedList;

    :cond_6
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v9, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    goto :goto_2

    :cond_8
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v7, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v7, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    :goto_2
    iget v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->i:I

    add-int/2addr v0, v9

    iput v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->i:I

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public _addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget v11, v10, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    new-array v12, v11, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v13, 0x0

    const/4 v0, -0x1

    move v14, v0

    move v15, v13

    :goto_0
    const/4 v0, 0x1

    if-ge v15, v11, :cond_2

    iget-object v1, v10, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object v1, v1, v15

    iget-object v2, v1, Lva/f;->a:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    iget-object v1, v1, Lva/f;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v15

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v12, v15

    goto :goto_1

    :cond_0
    if-gez v14, :cond_1

    move v14, v15

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v10, v1, v0

    const-string v0, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed"

    invoke-virtual {v7, v8, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    if-gez v14, :cond_3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v10, v1, v13

    const-string v2, "No argument left as delegating for Creator %s: exactly one required"

    invoke-virtual {v7, v8, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v10, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-ne v11, v0, :cond_5

    move-object/from16 v2, p0

    invoke-virtual {v2, v9, v1, v0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v9, v1, v0, v12, v14}, Lcom/fasterxml/jackson/databind/deser/impl/b;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    return-void
.end method

.method public _addExplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Z)V
    .locals 11

    iget-object v6, p2, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    iget-object v7, p2, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    if-ne v2, v10, :cond_0

    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->c:Lcom/fasterxml/jackson/databind/introspect/l0;

    invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/l0;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->f:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->f:Ljava/util/LinkedList;

    :cond_1
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/c;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    iget-boolean v1, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->b:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    iget-boolean v2, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->c:Z

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_4
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v10, :cond_7

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/fasterxml/jackson/databind/deser/c;->e:Ljava/util/Map;

    if-eq v1, v2, :cond_6

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    goto :goto_1

    :cond_6
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-static {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v7, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    goto :goto_1

    :cond_7
    invoke-static {v8, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/a;->a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v7, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V

    :goto_1
    iget v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->g:I

    add-int/2addr v0, v10

    iput v0, p2, Lcom/fasterxml/jackson/databind/deser/c;->g:I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public _addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/deser/impl/a;)V
    .locals 17

    move-object/from16 v7, p4

    iget v8, v7, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    new-array v9, v8, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v8, :cond_2

    iget-object v0, v7, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object v0, v0, v15

    iget-object v1, v0, Lva/f;->c:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    iget-object v0, v0, Lva/f;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/a;->c(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/p;

    move-result-object v0

    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    if-eqz v0, :cond_0

    invoke-virtual {v13, v12, v11, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    :cond_0
    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/a;->b(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move v4, v15

    move-object v5, v10

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/a;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    move-object v0, v10

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    :goto_1
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v0

    move-object v0, v14

    move v14, v15

    move v1, v15

    move-object v15, v0

    invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v9, v1

    add-int/lit8 v15, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x1

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1, v9}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-void
.end method

.method public _addImplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Ljava/util/List;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v10, v9, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    iget-object v1, v9, Lcom/fasterxml/jackson/databind/deser/c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v11

    iget-object v12, v9, Lcom/fasterxml/jackson/databind/deser/c;->c:Lcom/fasterxml/jackson/databind/introspect/l0;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToProperties()Z

    move-result v13

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, v9, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    if-eqz v0, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/impl/a;

    iget v2, v3, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    iget-object v1, v3, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-ne v2, v5, :cond_5

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v0

    if-nez v13, :cond_1

    invoke-direct {v7, v11, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v5

    :goto_2
    if-eqz v2, :cond_4

    new-array v5, v5, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v0, v3, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object v2, v0, v6

    iget-object v2, v2, Lva/f;->c:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/impl/a;->c(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/impl/a;->b(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v17, :cond_3

    move/from16 v18, v13

    :cond_2
    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    move-object v3, v2

    const/16 v18, 0x0

    aget-object v0, v0, v6

    iget-object v0, v0, Lva/f;->a:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-object/from16 v0, p0

    move-object v2, v1

    move-object/from16 v1, p1

    move-object v15, v2

    move-object v2, v10

    move-object v9, v4

    move/from16 v4, v18

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    move/from16 v18, v13

    move v13, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    move-object/from16 v1, v20

    aput-object v0, v1, v13

    invoke-virtual {v9, v15, v13, v1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_3

    :cond_4
    move-object v15, v1

    move-object v9, v4

    move/from16 v18, v13

    move v13, v6

    invoke-interface {v12, v15}, Lcom/fasterxml/jackson/databind/introspect/l0;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v1

    invoke-virtual {v7, v9, v15, v13, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    if-eqz v0, :cond_2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    :goto_4
    move-object/from16 v27, v6

    move-object/from16 v24, v12

    move-object/from16 v23, v14

    goto/16 :goto_d

    :cond_5
    move-object v15, v1

    move-object v9, v4

    move/from16 v18, v13

    move v13, v6

    const/4 v6, 0x0

    new-array v4, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v0, -0x1

    move v1, v0

    move v0, v13

    move/from16 v17, v0

    move/from16 v19, v17

    :goto_5
    if-ge v0, v2, :cond_b

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v5

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v20

    invoke-virtual {v11, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v21

    if-nez v20, :cond_6

    move-object/from16 v22, v6

    goto :goto_6

    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/introspect/q;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v22

    :goto_6
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/introspect/q;->u()Z

    move-result v20

    if-eqz v20, :cond_7

    add-int/lit8 v17, v17, 0x1

    move/from16 v20, v0

    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, p1

    move-object/from16 v23, v14

    move v14, v2

    move-object v2, v10

    move-object/from16 v24, v12

    move-object v12, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v12

    move-object v12, v4

    move/from16 v4, v20

    const/16 v26, 0x1

    move-object/from16 v27, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v12, v20

    goto :goto_7

    :cond_7
    move/from16 v20, v0

    move v13, v1

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    move-object/from16 v24, v12

    move-object/from16 v23, v14

    const/16 v26, 0x1

    move v14, v2

    move-object v12, v4

    if-eqz v21, :cond_8

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v12, v20

    goto :goto_7

    :cond_8
    invoke-virtual {v11, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/p;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v8, v10, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    goto :goto_7

    :cond_9
    if-gez v13, :cond_a

    move/from16 v1, v20

    goto :goto_8

    :cond_a
    :goto_7
    move v1, v13

    :goto_8
    add-int/lit8 v0, v20, 0x1

    move-object v4, v12

    move v2, v14

    move-object/from16 v14, v23

    move-object/from16 v12, v24

    move-object/from16 v3, v25

    move/from16 v5, v26

    move-object/from16 v6, v27

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_b
    move v13, v1

    move-object/from16 v25, v3

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v24, v12

    move-object/from16 v23, v14

    move v14, v2

    move-object v12, v4

    add-int/lit8 v0, v17, 0x0

    if-gtz v17, :cond_d

    if-lez v19, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    add-int v0, v0, v19

    if-ne v0, v14, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v9, v15, v0, v12}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_d

    :cond_e
    const/4 v0, 0x0

    if-nez v17, :cond_f

    add-int/lit8 v1, v19, 0x1

    if-ne v1, v14, :cond_f

    invoke-virtual {v9, v15, v0, v12, v0}, Lcom/fasterxml/jackson/databind/deser/impl/b;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    goto :goto_d

    :cond_f
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/databind/deser/impl/a;->b(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aput-object v15, v0, v26

    const-string v1, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v8, v10, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    iget-object v0, v9, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v0, v0, v2

    if-eqz v0, :cond_11

    move/from16 v6, v26

    goto :goto_b

    :cond_11
    move v6, v2

    :goto_b
    if-nez v6, :cond_13

    if-nez v16, :cond_12

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_c

    :cond_12
    move-object/from16 v0, v16

    :goto_c
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    :cond_13
    :goto_d
    move-object/from16 v9, p2

    move/from16 v13, v18

    move-object/from16 v14, v23

    move-object/from16 v12, v24

    goto/16 :goto_0

    :cond_14
    move-object v9, v4

    move/from16 v26, v5

    move v2, v6

    move-object/from16 v24, v12

    if-eqz v16, :cond_17

    iget-object v0, v9, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    if-eqz v1, :cond_15

    move/from16 v6, v26

    goto :goto_e

    :cond_15
    move v6, v2

    :goto_e
    if-nez v6, :cond_17

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-eqz v0, :cond_16

    move/from16 v6, v26

    goto :goto_f

    :cond_16
    move v6, v2

    :goto_f
    if-nez v6, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v24

    move-object v4, v11

    move-object v5, v9

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/l0;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/b;Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public _addImplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v9, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    iget-object v0, v9, Lcom/fasterxml/jackson/databind/deser/c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v11

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/impl/a;

    iget v13, v0, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    iget-object v1, v9, Lcom/fasterxml/jackson/databind/deser/c;->e:Ljava/util/Map;

    iget-object v14, v0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Lcom/fasterxml/jackson/databind/introspect/q;

    const/4 v6, 0x1

    if-eq v13, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/a;->d(I)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object v0

    invoke-direct {v7, v11, v14, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/q;)Z

    move-result v1

    const/4 v4, 0x0

    iget-object v3, v9, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    if-nez v1, :cond_2

    iget-object v1, v9, Lcom/fasterxml/jackson/databind/deser/c;->c:Lcom/fasterxml/jackson/databind/introspect/l0;

    invoke-interface {v1, v14}, Lcom/fasterxml/jackson/databind/introspect/l0;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v1

    invoke-virtual {v7, v3, v14, v5, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    if-eqz v0, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    iput-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_2
    new-array v2, v13, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object/from16 v18, v4

    move v1, v5

    move/from16 v16, v1

    move/from16 v17, v16

    :goto_1
    if-ge v1, v13, :cond_9

    invoke-virtual {v14, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v15, :cond_3

    move-object/from16 v19, v4

    goto :goto_2

    :cond_3
    aget-object v19, v15, v1

    :goto_2
    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v20

    if-nez v19, :cond_4

    move-object/from16 v21, v4

    goto :goto_3

    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/databind/introspect/q;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v21

    :goto_3
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/databind/introspect/q;->u()Z

    move-result v19

    if-eqz v19, :cond_5

    add-int/lit8 v16, v16, 0x1

    move-object/from16 p3, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v22, v12

    move-object v12, v3

    move-object/from16 v3, v21

    move-object/from16 v23, v4

    move/from16 v4, v19

    move-object/from16 v24, v15

    move v15, v5

    move-object/from16 v5, p3

    move/from16 v25, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v9, v19

    goto :goto_4

    :cond_5
    move-object/from16 p3, v0

    move/from16 v19, v1

    move-object v9, v2

    move-object/from16 v23, v4

    move/from16 v25, v6

    move-object/from16 v22, v12

    move-object/from16 v24, v15

    move-object v12, v3

    move v15, v5

    if-eqz v20, :cond_6

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v21

    move/from16 v4, v19

    move-object/from16 v5, p3

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v9, v19

    goto :goto_4

    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/p;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v7, v8, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    goto :goto_4

    :cond_7
    if-nez v18, :cond_8

    move-object/from16 v18, v0

    :cond_8
    :goto_4
    add-int/lit8 v1, v19, 0x1

    move-object v2, v9

    move-object v3, v12

    move v5, v15

    move-object/from16 v12, v22

    move-object/from16 v4, v23

    move-object/from16 v15, v24

    move/from16 v6, v25

    move-object/from16 v9, p2

    goto/16 :goto_1

    :cond_9
    move-object v9, v2

    move v15, v5

    move/from16 v25, v6

    move-object/from16 v22, v12

    move-object v12, v3

    add-int/lit8 v0, v16, 0x0

    if-gtz v16, :cond_a

    if-lez v17, :cond_e

    :cond_a
    add-int v0, v0, v17

    if-ne v0, v13, :cond_b

    invoke-virtual {v12, v14, v15, v9}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_6

    :cond_b
    if-nez v16, :cond_c

    add-int/lit8 v0, v17, 0x1

    if-ne v0, v13, :cond_c

    invoke-virtual {v12, v14, v15, v9, v15}, Lcom/fasterxml/jackson/databind/deser/impl/b;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    goto :goto_6

    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez v18, :cond_d

    const/4 v1, -0x1

    goto :goto_5

    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v15

    aput-object v14, v0, v25

    const-string v1, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v8, v10, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    move-object/from16 v9, p2

    move-object/from16 v12, v22

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public _addRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/c;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    new-array v4, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v5, 0x0

    move v13, v5

    :goto_0
    if-ge v13, v2, :cond_2

    invoke-virtual {v1, v13}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v12

    invoke-virtual {v3, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p4

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v14, p4

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    :goto_2
    move-object v9, v6

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    move-object v6, p0

    move-object/from16 v7, p1

    move v10, v13

    invoke-virtual/range {v6 .. v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    aput-object v6, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    invoke-virtual {v0, v1, v5, v4}, Lcom/fasterxml/jackson/databind/deser/impl/b;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-void
.end method

.method public _constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;
    .locals 13

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultVisibilityChecker(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/l0;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v1

    new-instance v9, Lcom/fasterxml/jackson/databind/deser/impl/b;

    invoke-direct {v9, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/b;-><init>(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Ljava/util/Map;

    move-result-object v8

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/c;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/c;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/l0;Lcom/fasterxml/jackson/databind/deser/impl/b;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->requireCtorAnnotation()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {p0, p1, v0, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Z)V

    iget-object v3, p2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lu9/a;

    invoke-direct {v7, p1, p2}, Lu9/a;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)V

    iget-object v8, v7, Lu9/a;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v11, v7, Lu9/a;->c:Ljava/lang/Object;

    check-cast v11, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v12, v7, Lu9/a;->b:Ljava/lang/Object;

    check-cast v12, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v11, v12, v10}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v11

    if-eqz v11, :cond_0

    sget-object v12, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v12, v11, :cond_1

    goto :goto_0

    :cond_1
    sget-object v12, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v12, v11, :cond_2

    goto :goto_1

    :cond_2
    iget-object v11, v7, Lu9/a;->e:Ljava/lang/Object;

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lu9/a;->f:Ljava/lang/Object;

    check-cast v8, [Lcom/google/android/gms/internal/measurement/h3;

    if-nez v8, :cond_4

    :goto_1
    move-object v7, v5

    goto :goto_3

    :cond_4
    array-length v10, v8

    move v11, v6

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, v7, Lu9/a;->e:Ljava/lang/Object;

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    :goto_3
    if-eqz v7, :cond_6

    invoke-virtual {p0, p1, v0, v7, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;)V

    invoke-virtual {v9, p1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->e(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/d;->n:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    sget-object v3, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/h;->w(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_8

    move v3, v4

    goto :goto_5

    :cond_8
    move v3, v6

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/d;->n:Ljava/lang/Boolean;

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->shouldIntrospectorImplicitConstructors(Ljava/lang/Class;)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Z)V

    iget-object p2, v0, Lcom/fasterxml/jackson/databind/deser/c;->h:Ljava/util/LinkedList;

    if-eqz p2, :cond_b

    move v1, v4

    goto :goto_6

    :cond_b
    move v1, v6

    :goto_6
    if-eqz v1, :cond_d

    iget v1, v0, Lcom/fasterxml/jackson/databind/deser/c;->i:I

    if-lez v1, :cond_c

    move v1, v4

    goto :goto_7

    :cond_c
    move v1, v6

    :goto_7
    if-nez v1, :cond_d

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addImplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Ljava/util/List;)V

    :cond_d
    :goto_8
    iget-object p2, v0, Lcom/fasterxml/jackson/databind/deser/c;->f:Ljava/util/LinkedList;

    if-eqz p2, :cond_e

    move v1, v4

    goto :goto_9

    :cond_e
    move v1, v6

    :goto_9
    if-eqz v1, :cond_11

    iget v1, v0, Lcom/fasterxml/jackson/databind/deser/c;->g:I

    if-lez v1, :cond_f

    move v1, v4

    goto :goto_a

    :cond_f
    move v1, v6

    :goto_a
    if-nez v1, :cond_11

    iget v1, v0, Lcom/fasterxml/jackson/databind/deser/c;->i:I

    if-lez v1, :cond_10

    goto :goto_b

    :cond_10
    move v4, v6

    :goto_b
    if-nez v4, :cond_11

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addImplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/c;Ljava/util/List;)V

    :cond_11
    invoke-virtual {v9, p1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->e(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    move-result-object p0

    return-object p0
.end method

.method public _findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    move-object v0, p2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/q;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v3

    if-nez v5, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v5

    new-array v5, v5, [Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    aget-object v6, v5, v3

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aget-object v7, v5, v3

    aput-object v7, v6, v4

    const/4 v4, 0x3

    aput-object v1, v6, v4

    const-string v4, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s"

    invoke-virtual {p1, p2, v4, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    aput-object v1, v5, v3

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public _findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/p;->findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/p;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/p;->findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/p;->findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/p;->findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/q;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/p;->findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/q;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/p;->findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/p;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/p;->findReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/p;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findJsonValueFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/b0;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p1

    instance-of p2, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz p2, :cond_2

    move-object p0, p1

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public _findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public _getSetterInfo(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/d;->getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v0

    move-object v1, v0

    :cond_1
    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v1

    :cond_4
    if-nez p0, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p0

    :cond_5
    if-nez v1, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    invoke-virtual {p3, v1, p0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withNulls(Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/annotation/Nulls;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p3

    :cond_7
    return-object p3
.end method

.method public _handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z
    .locals 3

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_10

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_6

    if-nez p3, :cond_5

    if-eqz p4, :cond_6

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_6
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    const/4 p4, 0x6

    invoke-virtual {p1, p2, p4, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_8
    if-eqz p3, :cond_9

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/fasterxml/jackson/databind/deser/impl/b;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    return v2

    :cond_9
    return p0

    :cond_a
    :goto_0
    if-nez p3, :cond_b

    if-eqz p4, :cond_c

    :cond_b
    const/4 p0, 0x7

    invoke-virtual {p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_c
    return v2

    :cond_d
    :goto_1
    if-nez p3, :cond_e

    if-eqz p4, :cond_f

    :cond_e
    const/4 p0, 0x5

    invoke-virtual {p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_f
    return v2

    :cond_10
    :goto_2
    if-nez p3, :cond_11

    if-eqz p4, :cond_12

    :cond_11
    const/4 p0, 0x3

    invoke-virtual {p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_12
    return v2

    :cond_13
    :goto_3
    if-nez p3, :cond_14

    if-eqz p4, :cond_15

    :cond_14
    const/4 p0, 0x2

    invoke-virtual {p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_15
    return v2

    :cond_16
    :goto_4
    if-nez p3, :cond_17

    if-eqz p4, :cond_18

    :cond_17
    invoke-virtual {p1, p2, v2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    :cond_18
    return v2
.end method

.method public _hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public _mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 1

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/b;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/type/MapType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p0, v0

    const-string p3, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported"

    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public _validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/a;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V
    .locals 0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p0, p5

    const/4 p4, 0x1

    aput-object p3, p0, p4

    const-string p3, "Argument #%d of constructor %s has no property name (and is not Injectable): can not use as property-based Creator"

    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public _valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/v;
    .locals 0

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    instance-of p2, p3, Lcom/fasterxml/jackson/databind/deser/v;

    if-eqz p2, :cond_1

    check-cast p3, Lcom/fasterxml/jackson/databind/deser/v;

    return-object p3

    :cond_1
    instance-of p2, p3, Ljava/lang/Class;

    if-eqz p2, :cond_4

    check-cast p3, Ljava/lang/Class;

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/h;->s(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p0

    :cond_2
    const-class p0, Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual {p0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/h;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p0

    invoke-static {p3, p0}, Lcom/fasterxml/jackson/databind/util/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/v;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AnnotationIntrospector returned Class "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "; expected Class<ValueInstantiator>"

    invoke-static {p3, p1, p2}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v11, p5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    const/4 v3, 0x0

    move-object v9, v2

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v3

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    move-object v5, v2

    move-object v9, v3

    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p0, p1, v11, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    new-instance v10, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v2, :cond_1

    invoke-virtual {p0, v8, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v2

    :cond_1
    move-object v5, v2

    invoke-virtual {p0, p1, v10, v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_getSetterInfo(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v13

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    move-object/from16 v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    move-object/from16 v2, p3

    move-object v3, v12

    move-object/from16 v7, p5

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object v10, v13

    invoke-static/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->construct(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v2

    invoke-virtual {p0, p1, v11}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/i;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0, v2, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_0
    invoke-static {p2, p1, p3}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingMethod(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method

.method public createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v0

    :cond_0
    move-object v7, v0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p3

    if-nez p3, :cond_3

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_1
    const-class p1, Ljava/lang/String;

    if-ne p3, p1, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;

    return-object p0

    :cond_2
    new-instance p3, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    invoke-direct {p3, p2, v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_0
    return-object p3
.end method

.method public createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v2, :cond_0

    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v2

    :cond_0
    move-object v9, v2

    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v1, :cond_1

    const-class v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;

    invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;)V

    :cond_1
    if-nez v2, :cond_1c

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find a deserializer for non-concrete Collection type "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p3

    move-object p2, v4

    :cond_5
    :goto_0
    if-nez v2, :cond_1c

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/v;->canCreateUsingDefault()Z

    move-result p3

    if-nez p3, :cond_1a

    const-class p3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    invoke-direct {p0, p2, v1, v9, p1}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V

    return-object p0

    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "java.util."

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v2, "java.util.Collections$"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    move-object v2, v3

    :goto_1
    const/4 v4, 0x4

    const-class v5, Ljava/util/Set;

    const-string v6, "Set"

    const-class v7, Ljava/util/List;

    const-string v8, "List"

    if-eqz v2, :cond_14

    const-string p3, "Unmodifiable"

    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/16 v10, 0xc

    if-eqz p3, :cond_9

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_9
    move-object p3, v3

    :goto_2
    if-eqz p3, :cond_b

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v4, 0x5

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto/16 :goto_5

    :cond_b
    const-string p3, "Singleton"

    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/16 v4, 0x9

    if-eqz p3, :cond_c

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_c
    move-object p3, v3

    :goto_3
    if-eqz p3, :cond_e

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_5

    :cond_e
    const-string p3, "Synchronized"

    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_f
    move-object p3, v3

    :goto_4
    if-eqz p3, :cond_12

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v4, 0x7

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_5

    :cond_10
    invoke-virtual {p3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_5

    :cond_11
    const-string v2, "Collection"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/16 v4, 0x8

    invoke-direct {p3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_5

    :cond_12
    move-object p3, v3

    :goto_5
    if-nez p3, :cond_13

    goto/16 :goto_8

    :cond_13
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;)V

    goto/16 :goto_9

    :cond_14
    const-string v2, "java.util.Arrays$"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x11

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_15
    move-object v2, v3

    :goto_6
    const/16 v10, 0xb

    if-eqz v2, :cond_16

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_19

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-direct {p3, v10, v4}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    invoke-direct {v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;)V

    goto :goto_9

    :cond_16
    const-string v2, "java.util.ImmutableCollections$"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x1f

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_17
    move-object p3, v3

    :goto_7
    if-eqz p3, :cond_19

    invoke-virtual {p3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-direct {p3, v10, v4}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    invoke-direct {v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;)V

    goto :goto_9

    :cond_18
    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_19

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-direct {p3, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    invoke-direct {v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;)V

    goto :goto_9

    :cond_19
    :goto_8
    move-object v2, v3

    :goto_9
    if-eqz v2, :cond_1a

    return-object v2

    :cond_1a
    const-class p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1b

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    invoke-direct {v2, p2, v1, p1}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/v;)V

    goto :goto_a

    :cond_1b
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    invoke-direct {v2, p2, v1, v9, p1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V

    :cond_1c
    :goto_a
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_1e
    :goto_b
    return-object v2
.end method

.method public createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez p1, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p1

    :cond_0
    move-object v6, p1

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const-class v4, Ljava/lang/Enum;

    if-ne v1, v4, :cond_0

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/deser/v;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    :goto_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/c;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1, v7}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6

    const-string v6, "Invalid `@JsonCreator` annotated Enum factory method [%s]: needs to return compatible type"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    invoke-static {v0, v1, v7, v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/v;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    :cond_5
    :goto_1
    if-nez v2, :cond_7

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    check-cast p3, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p1, p3, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez p1, :cond_6

    move-object p1, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/b0;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Ljava/lang/Boolean;)V

    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_9
    :goto_3
    return-object v2
.end method

.method public createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/q;
    .locals 6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasKeyDeserializers()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/q;

    invoke-interface {v4, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/q;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    move-object v4, v1

    :cond_2
    :goto_0
    if-nez v4, :cond_5

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    :cond_3
    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v4

    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v2

    :cond_7
    :goto_2
    return-object v4
.end method

.method public createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/fasterxml/jackson/databind/q;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v1, :cond_0

    invoke-virtual {v7, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    const/16 v18, 0x0

    if-nez v0, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    move-object/from16 v12, p3

    if-eqz v3, :cond_3

    if-ne v1, v2, :cond_1

    move-object/from16 v2, v18

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v8, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumImplType()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v11, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/r;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-nez v0, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isInterface()Z

    move-result v1

    const-class v2, Ljava/util/Map;

    if-nez v1, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Collections$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object/from16 v1, v18

    :goto_3
    const/4 v3, 0x6

    const-string v4, "Map"

    if-eqz v1, :cond_b

    const-string v0, "Unmodifiable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v5, 0xc

    if-eqz v0, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object/from16 v0, v18

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {v9, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto/16 :goto_8

    :cond_7
    const-string v0, "Singleton"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object/from16 v0, v18

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {v9, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_8

    :cond_9
    const-string v0, "Synchronized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    move-object/from16 v0, v18

    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {v9, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_8

    :cond_b
    const-string v1, "java.util.ImmutableCollections$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object/from16 v0, v18

    :goto_7
    if-eqz v0, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {v9, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/g;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_8

    :cond_d
    move-object/from16 v0, v18

    :goto_8
    if-nez v0, :cond_e

    move-object/from16 v1, v18

    goto :goto_9

    :cond_e
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;)V

    :goto_9
    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    move-object v13, v9

    goto :goto_c

    :cond_10
    :goto_a
    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v3

    move-object v12, v3

    goto :goto_b

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v0

    move-object v1, v9

    :goto_b
    move-object v13, v1

    move-object v1, v0

    :goto_c
    move-object v0, v12

    if-nez v1, :cond_14

    invoke-virtual {v7, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v14

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v10, v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v3

    if-nez v3, :cond_12

    move-object/from16 v3, v18

    goto :goto_d

    :cond_12
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v3

    :goto_d
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIgnorableProperties(Ljava/util/Set;)V

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v10, v2, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v0

    if-nez v0, :cond_13

    move-object/from16 v0, v18

    goto :goto_e

    :cond_13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIncludableProperties(Ljava/util/Set;)V

    :cond_14
    move-object v0, v1

    goto :goto_f

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find a deserializer for non-concrete Map type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_f
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_10

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v18

    :cond_18
    :goto_10
    return-object v0
.end method

.method public createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/fasterxml/jackson/databind/q;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez p1, :cond_0

    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p1

    :cond_0
    move-object v7, p1

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public createReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v2, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v2

    :cond_0
    move-object v0, v2

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v3

    :goto_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    invoke-direct {p0, p2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/v;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/i;)V

    return-object p0

    :cond_2
    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_4
    :goto_1
    return-object v2
.end method

.method public createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public findContentDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    if-eqz p2, :cond_3

    array-length v1, p2

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    aget-object p2, p2, v4

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    :goto_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v1

    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/q;

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;

    invoke-direct {p3, p2, p1, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    return-object p3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "java."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/j;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    move-result-object v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/d;->a:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-class v3, Ljava/util/Calendar;

    if-ne v0, v3, :cond_8

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>()V

    goto :goto_2

    :cond_8
    const-class v3, Ljava/util/Date;

    if-ne v0, v3, :cond_9

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    goto :goto_2

    :cond_9
    const-class v3, Ljava/util/GregorianCalendar;

    if-ne v0, v3, :cond_a

    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    move-object v3, v4

    goto :goto_2

    :cond_a
    move-object v3, v2

    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    return-object v3

    :cond_c
    const-class v3, Lcom/fasterxml/jackson/databind/util/z;

    if-ne v0, v3, :cond_d

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;-><init>()V

    return-object p0

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/f;->a:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    move-result-object p0

    if-eqz p0, :cond_f

    move-object v2, p0

    goto :goto_3

    :cond_f
    const-class p0, Ljava/util/UUID;

    if-ne v0, p0, :cond_10

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;-><init>()V

    goto :goto_3

    :cond_10
    const-class p0, Ljava/lang/StackTraceElement;

    if-ne v0, p0, :cond_11

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    goto :goto_3

    :cond_11
    const-class p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v0, p0, :cond_12

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;-><init>()V

    goto :goto_3

    :cond_12
    const-class p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p0, :cond_13

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;-><init>()V

    goto :goto_3

    :cond_13
    const-class p0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, p0, :cond_14

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;-><init>()V

    goto :goto_3

    :cond_14
    const-class p0, Ljava/nio/ByteBuffer;

    if-ne v0, p0, :cond_15

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V

    goto :goto_3

    :cond_15
    const-class p0, Ljava/lang/Void;

    if-ne v0, p0, :cond_16

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    :cond_16
    :goto_3
    return-object v2

    :cond_17
    :goto_4
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;

    return-object p0

    :cond_18
    :goto_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result p2

    if-eqz p2, :cond_19

    const-class p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const-class p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    goto :goto_6

    :cond_19
    move-object p0, v2

    :goto_6
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-direct {p1, v2, p0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object p1
.end method

.method public findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/q;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/q;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/g;
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0

    return-object p0
.end method

.method public findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/g;
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;
    .locals 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/jsontype/i;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v1

    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;
    .locals 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/impl/f;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasValueInstantiators()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/x;

    invoke-interface {v2, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/x;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/v;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator"

    invoke-virtual {p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    return-object p0
.end method

.method public hasExplicitDeserializerFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-class p0, Ljava/lang/Enum;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2, p0}, Lcom/fasterxml/jackson/databind/deser/std/j;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    return p1

    :cond_5
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/f;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    if-eq p2, p0, :cond_8

    const-class p0, Ljava/lang/Boolean;

    if-eq p2, p0, :cond_8

    const-class p0, Ljava/util/EnumMap;

    if-eq p2, p0, :cond_8

    const-class p0, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne p2, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/d;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p1

    :cond_7
    return v1

    :cond_8
    :goto_2
    return p1

    :cond_9
    const-string v0, "com.fasterxml."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-class p0, Lcom/fasterxml/jackson/databind/k;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_b

    const-class p0, Lcom/fasterxml/jackson/databind/util/z;

    if-ne p2, p0, :cond_a

    goto :goto_3

    :cond_a
    move p1, v1

    :cond_b
    :goto_3
    return p1

    :cond_c
    sget-object p0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasDeserializerFor(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid abstract type resolution from "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": latter is not a subtype of former"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public final withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p0

    return-object p0
.end method

.method public final withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/p;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/p;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p0

    return-object p0
.end method

.method public final withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/q;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/q;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p0

    return-object p0
.end method

.method public abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;
.end method

.method public final withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p0

    return-object p0
.end method

.method public final withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/x;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/x;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p0

    return-object p0
.end method
