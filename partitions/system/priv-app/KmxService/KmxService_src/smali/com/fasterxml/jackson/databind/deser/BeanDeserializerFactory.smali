.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.source "SourceFile"


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    return-void
.end method

.method private _isSetterlessType(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class p0, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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


# virtual methods
.method public _findUnsupportedTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
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

    invoke-static {p2}, Lg2/m;->c(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;

    invoke-direct {p1, p2, p0}, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)V
    .locals 2

    sget-object p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->c:Lcom/fasterxml/jackson/databind/jsontype/impl/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->a:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "org.springframework."

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    if-eqz p2, :cond_5

    const-class p0, Ljava/lang/Object;

    if-eq p2, p0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractPointcutAdvisor"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AbstractApplicationContext"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p0, "com.mchange.v2.c3p0."

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "DataSource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p0, p2

    const-string p2, "Illegal type (%s) to deserialize: prevented for security reasons"

    invoke-virtual {p1, p3, p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method public addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 8

    move-object v0, p2

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/q;->e()Lcom/fasterxml/jackson/databind/b;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/fasterxml/jackson/databind/b;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v7, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/b;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Multiple back-reference properties with name "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->e()Lcom/fasterxml/jackson/databind/b;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v1

    goto :goto_4

    :cond_6
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/b;->b:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->m()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    iget-object v4, p3, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p3, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    :cond_7
    iget-object v4, p3, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {p3, v4}, Lcom/fasterxml/jackson/databind/deser/f;->d(Ljava/lang/IllegalArgumentException;)V

    :cond_8
    :goto_5
    iget-object v4, p3, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return-void
.end method

.method public addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v9, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/fasterxml/jackson/databind/deser/f;->i:Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/v;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object v13, v12

    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_1

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v9

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->getIgnoreUnknown()Z

    move-result v1

    iput-boolean v1, v10, Lcom/fasterxml/jackson/databind/deser/f;->l:Z

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Lcom/fasterxml/jackson/databind/deser/f;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_3
    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v10, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    :cond_4
    iget-object v4, v10, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v6, v0

    goto :goto_4

    :cond_6
    move-object v6, v12

    :goto_4
    const/4 v4, 0x2

    iget-object v0, v2, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_7
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v1, v11, :cond_8

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_5

    :cond_8
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Multiple \'any-setter\' methods defined (%s vs %s)"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_9
    move-object v1, v12

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v1, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    const-class v12, Ljava/lang/String;

    if-eq v3, v12, :cond_11

    const-class v12, Ljava/lang/Object;

    if-ne v3, v12, :cond_a

    goto/16 :goto_7

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v14

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    const-string v1, "Invalid \'any-setter\' annotation on method \'%s()\': first argument not of type String or Object, but %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_c
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v1, v11, :cond_d

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    goto :goto_6

    :cond_d
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Multiple \'any-setter\' fields defined (%s vs %s)"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/b;->getRawType()Ljava/lang/Class;

    move-result-object v3

    const-class v12, Ljava/util/Map;

    invoke-virtual {v12, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_11

    const-class v12, Lcom/fasterxml/jackson/databind/k;

    invoke-virtual {v12, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v14

    const-string v1, "Invalid \'any-setter\' annotation on field \'%s\': type is not instance of `java.util.Map` or `JsonNode`"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_7
    if-eqz v1, :cond_14

    invoke-virtual {v7, v8, v9, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    iget-object v1, v10, Lcom/fasterxml/jackson/databind/deser/f;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v1, :cond_13

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_8
    iput-object v0, v10, Lcom/fasterxml/jackson/databind/deser/f;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    goto :goto_b

    :cond_14
    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->s:Ljava/util/HashSet;

    :goto_9
    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_16
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/deser/f;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    :goto_b
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v12, v11

    goto :goto_c

    :cond_18
    move v12, v14

    :goto_c
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v11, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 v1, 0x0

    throw v1

    :cond_1a
    :goto_d
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->s()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    :goto_f
    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    goto :goto_11

    :cond_1b
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->q()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_f

    :cond_1c
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    if-eqz v3, :cond_1f

    if-eqz v12, :cond_1d

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_isSetterlessType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    iget-object v5, v10, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    invoke-static {v3, v4, v5}, Lh3/a;->S(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_10

    :cond_1d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->p()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getMergeInfo()Lcom/fasterxml/jackson/databind/x;

    move-result-object v3

    if-eqz v3, :cond_1f

    :cond_1e
    invoke-virtual {v7, v8, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    goto :goto_11

    :cond_1f
    :goto_10
    move-object v3, v1

    :goto_11
    if-eqz v15, :cond_26

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->p()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object v4

    array-length v5, v13

    move v6, v14

    :goto_12
    if-ge v6, v5, :cond_21

    aget-object v1, v13, v6

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    instance-of v14, v1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    if-eqz v14, :cond_20

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    goto :goto_13

    :cond_20
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_12

    :cond_21
    const/4 v1, 0x0

    :goto_13
    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v13

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v3, :cond_22

    aget-object v6, v13, v5

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_22
    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "Could not find creator property with name %s (known Creator properties: %s)"

    invoke-virtual {v8, v9, v2, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_23
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_24

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setFallbackSetter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    :cond_24
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->f()[Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/c;->a()[Ljava/lang/Class;

    move-result-object v2

    :cond_25
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/deser/f;->f(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_15

    :cond_26
    move v5, v14

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/q;->f()[Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_27

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/c;->a()[Ljava/lang/Class;

    move-result-object v1

    :cond_27
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/deser/f;->f(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    :cond_28
    :goto_15
    move v14, v5

    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_29
    return-void
.end method

.method public addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 5

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p0, p2, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->t:Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p3, Lcom/fasterxml/jackson/databind/deser/f;->e:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p3, Lcom/fasterxml/jackson/databind/deser/f;->e:Ljava/util/ArrayList;

    :cond_2
    iget-object v3, p3, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/deser/f;->d(Ljava/lang/IllegalArgumentException;)V

    :cond_3
    :goto_2
    iget-object v3, p3, Lcom/fasterxml/jackson/databind/deser/f;->e:Ljava/util/ArrayList;

    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    invoke-direct {v4, v1, v2, v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 7

    move-object p0, p2

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->i:Lcom/fasterxml/jackson/databind/introspect/a0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/e;->objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/introspect/a0;)Lcom/fasterxml/jackson/annotation/o0;

    const/4 v6, 0x0

    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/a0;->b:Ljava/lang/Class;

    if-ne v3, v1, :cond_2

    iget-object p0, p3, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/a0;->a:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/a0;->d:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V

    move-object v5, p0

    move-object v3, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/h;->x(Lcom/fasterxml/jackson/databind/PropertyName;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Invalid Object Id definition for %s: cannot find property with name %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v1, p2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/e;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/introspect/a0;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v3, p0

    move-object v5, v1

    :goto_0
    move-object v1, p2

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v4

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/a0;->a:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/o0;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object p0

    iput-object p0, p3, Lcom/fasterxml/jackson/databind/deser/f;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-void
.end method

.method public addReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    return-void
.end method

.method public buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
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

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/f;

    move-result-object v2

    iput-object v1, v2, Lcom/fasterxml/jackson/databind/deser/f;->i:Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/v;->canInstantiate()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    iget-object p2, v2, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    iget-object p3, v2, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    invoke-direct {p1, v2, v1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/f;Lcom/fasterxml/jackson/databind/c;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/f;->g()Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/g;

    move-result-object p1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/c;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/c;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object p1
.end method

.method public buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/f;

    move-result-object v7

    iput-object v4, v7, Lcom/fasterxml/jackson/databind/deser/f;->i:Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    move-object v1, v2

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/d;)Lg2/g;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "build"

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lg2/g;->a:Ljava/lang/String;

    :goto_1
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/d;->c()Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v1

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/j;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/z;

    invoke-direct {v4, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_3
    iput-object v1, v7, Lcom/fasterxml/jackson/databind/deser/f;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_5
    :goto_3
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/f;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, v7, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    const/4 v8, 0x1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v6, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v2, v5, v8

    const-string v2, "Builder class %s does not have build method (name: \'%s\')"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v6, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v7, Lcom/fasterxml/jackson/databind/deser/f;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/h;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    const-string v1, "Build method `%s` has wrong return type (%s), not compatible with POJO type (%s)"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_4
    iget-object v4, v7, Lcom/fasterxml/jackson/databind/deser/f;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v4, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/deser/f;->c(Ljava/util/Collection;)V

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/deser/f;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/f;->b()Z

    move-result v4

    iget-object v5, v7, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-static {v5, v1, v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_9

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z

    move-result v5

    if-eqz v5, :cond_8

    move v15, v8

    goto :goto_5

    :cond_9
    move v15, v4

    :goto_5
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/f;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    iget-object v4, v7, Lcom/fasterxml/jackson/databind/deser/f;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    sget-object v5, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v1, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v1

    move-object v10, v1

    goto :goto_6

    :cond_a
    move-object v10, v2

    :goto_6
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;

    iget-object v8, v7, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    iget-object v11, v7, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    iget-object v12, v7, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    iget-boolean v13, v7, Lcom/fasterxml/jackson/databind/deser/f;->l:Z

    iget-object v14, v7, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    move-object v6, v1

    move-object/from16 v9, p2

    invoke-direct/range {v6 .. v15}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/f;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/Set;ZLjava/util/Set;Z)V

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_c
    :goto_7
    return-object v1

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/g;

    move-result-object v0

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/c;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/c;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object v0
.end method

.method public buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 11
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

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/f;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/v;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/deser/f;->i:Lcom/fasterxml/jackson/databind/deser/v;

    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;)V

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setCause"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    move-object v3, p3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/d;->c()Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/j;->a:Ljava/util/Map;

    if-nez v3, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/z;

    const-string v6, "initCause"

    invoke-direct {v5, v6, v2}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v3

    const-string v5, "cause"

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2, v2, v5}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p2

    new-instance v8, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v8, v5}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/fasterxml/jackson/databind/util/v;->g:I

    const/4 v9, 0x0

    sget-object v10, Lcom/fasterxml/jackson/databind/introspect/q;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    new-instance v3, Lcom/fasterxml/jackson/databind/util/v;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v6

    move-object v5, v3

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/util/v;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v4

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/f;->g()Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v4

    :cond_8
    :goto_2
    return-object p1
.end method

.method public constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p3

    instance-of v9, v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    instance-of v3, v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object v2, v8

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p0, p1, v8, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    new-instance v12, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, v12

    move-object v4, v11

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    :goto_0
    move-object v3, v11

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_9

    move-object v3, v8

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, p1, v8, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    new-instance v12, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, v12

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/q;

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p1, v10, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/q;

    move-result-object v2

    :cond_2
    move-object v4, v2

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findContentDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/i;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0, v12, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    :cond_4
    move-object v5, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/g;

    move-object v0, p1

    move-object v1, v12

    move-object/from16 v2, p3

    if-eqz v9, :cond_5

    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->constructForMapField(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->constructForMethod(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    return-object v0

    :cond_6
    const-class v6, Lcom/fasterxml/jackson/databind/k;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    const-class v7, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Unsupported type for any-setter: %s -- only support `Map`s, `JsonNode` and `ObjectNode` "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-object v0

    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v8, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    new-instance v9, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, v9

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v2

    invoke-static {p1, v9, v8, v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->constructForJsonNodeField(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Unrecognized mutator type for any-setter: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-object v0
.end method

.method public constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/deser/f;
    .locals 0

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/f;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)V

    return-object p0
.end method

.method public constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 10

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "No non-constructor mutator available"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, v0, p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/fasterxml/jackson/databind/jsontype/g;

    instance-of v2, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v8, p2, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    move-object v9, v0

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v8, p2, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    move-object v9, v0

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/i;

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p1, p0, v2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    :cond_4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->e()Lcom/fasterxml/jackson/databind/b;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/b;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object p2, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne p1, p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->d()Lcom/fasterxml/jackson/databind/introspect/a0;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/a0;)V

    :cond_7
    return-object v2
.end method

.method public constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 9

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/q;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/g;

    new-instance v8, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v4, p2, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    move-object v0, v8

    move-object v1, p3

    move-object v2, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/i;

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0, v8, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    invoke-virtual {v8, p0}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    :cond_1
    return-object v8
.end method

.method public createBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
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

    invoke-virtual {p0, p2, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    throw v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isThrowable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_findUnsupportedTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public createBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/i;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p4, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    return-object p0
.end method

.method public filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/f;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p5, p6}, Lh3/a;->S(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/q;->p()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/q;->n()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/deser/f;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-class p0, Ljava/lang/String;

    if-eq p3, p0, :cond_2

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_3
    invoke-interface {p4, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ") as a Bean"

    const-string v1, " (of type "

    const-string v2, "Cannot deserialize Class "

    if-nez p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "net.sf.cglib.proxy."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "org.hibernate.proxy."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v5

    :goto_1
    if-nez p0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->w(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    move v4, v5

    :cond_2
    if-eqz v4, :cond_3

    const-string p0, "local/anonymous"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_4

    return v5

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot deserialize Proxy class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " as a Bean"

    invoke-static {p1, v0, v1}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/a;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/fasterxml/jackson/databind/a;->resolveAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/n;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    const-string v1, "withConfig"

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/h;->F(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    return-object p0
.end method
