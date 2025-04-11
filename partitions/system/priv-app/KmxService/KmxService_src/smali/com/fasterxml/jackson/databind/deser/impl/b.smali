.class public final Lcom/fasterxml/jackson/databind/deser/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/c;

.field public final b:Z

.field public final c:Z

.field public final d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field public e:I

.field public f:Z

.field public g:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public h:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public i:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "default"

    const-string v1, "from-String"

    const-string v2, "from-int"

    const-string v3, "from-long"

    const-string v4, "from-big-integer"

    const-string v5, "from-double"

    const-string v6, "from-big-decimal"

    const-string v7, "from-boolean"

    const-string v8, "delegate"

    const-string v9, "property-based"

    const-string v10, "array-delegate"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/b;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->e:I

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->f:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->a:Lcom/fasterxml/jackson/databind/c;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->b:Z

    sget-object p1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->c:Z

    return-void
.end method

.method public static b(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/impl/b;->j:[Ljava/lang/String;

    aget-object p0, v2, p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    if-eqz p1, :cond_0

    const-string p0, "explicitly marked"

    goto :goto_0

    :cond_0
    const-string p0, "implicitly discovered"

    :goto_0
    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const-string p0, "Conflicting %s creators: already had %s creator %s, encountered another: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->f:Z

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p0, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p3

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p3, p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
    .locals 0

    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p4, 0xa

    invoke-virtual {p0, p1, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->h:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    invoke-virtual {p0, p1, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->g:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 5

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/b;->f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v3, p3, v1

    aput-object v4, p3, p2

    const/4 p2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->a:Lcom/fasterxml/jackson/databind/c;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, p3, p2

    const-string p0, "Duplicate creator property \"%s\" (index %s vs %d) for type %s "

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->i:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    :cond_3
    return-void
.end method

.method public final e(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
    .locals 13

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v2, 0x8

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->g:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {p0, p1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/impl/b;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    const/16 v3, 0xa

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->h:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {p0, p1, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/b;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->a:Lcom/fasterxml/jackson/databind/c;

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    new-instance v12, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    invoke-direct {v12, v0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V

    const/4 v0, 0x0

    aget-object v6, v1, v0

    aget-object v7, v1, v2

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->g:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/16 v0, 0x9

    aget-object v10, v1, v0

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->i:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object v5, v12

    invoke-virtual/range {v5 .. v11}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    aget-object v0, v1, v3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->h:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v12, v0, p1, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromArraySettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    const/4 p0, 0x1

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x2

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x3

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x4

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBigIntegerCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x5

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x6

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBigDecimalCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    const/4 p0, 0x7

    aget-object p0, v1, p0

    invoke-virtual {v12, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    return-object v12
.end method

.method public final f(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z
    .locals 9

    const/4 v0, 0x1

    shl-int v1, v0, p2

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->f:Z

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->d:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v3, v2, p2

    if-eqz v3, :cond_a

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->e:I

    and-int/2addr v4, v1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez p3, :cond_0

    return v5

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v4, p3, 0x1

    :goto_0
    if-eqz v4, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v4, v6, :cond_a

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    if-ne v4, v6, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->t(Ljava/lang/Class;)Z

    move-result v4

    const-string v6, "valueOf"

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    return v5

    :cond_3
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->t(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v0

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2, p3, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->b(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    throw v7

    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    return v5

    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eq v8, v6, :cond_9

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_a

    return v5

    :cond_9
    invoke-static {p2, p3, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/b;->b(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    throw v7

    :cond_a
    :goto_2
    if-eqz p3, :cond_b

    iget p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->e:I

    or-int/2addr p3, v1

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->e:I

    :cond_b
    if-eqz p1, :cond_c

    iget-boolean p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->b:Z

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/b;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Member;

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/b;->c:Z

    invoke-static {p3, p0}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_c
    aput-object p1, v2, p2

    return v0
.end method
