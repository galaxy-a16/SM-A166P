.class public Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;
.super Lcom/fasterxml/jackson/databind/introspect/s;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

.field private static final CLS_JSON_NODE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final INT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

.field protected static final LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

.field protected static final OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

.field protected static final STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_OBJECT:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_STRING:Ljava/lang/Class;

    const-class v2, Lcom/fasterxml/jackson/databind/k;

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_JSON_NODE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v3, v1}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {v1, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/s;-><init>()V

    return-void
.end method


# virtual methods
.method public _findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/p;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_isStdJDKCollection(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/p;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->u(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_OBJECT:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_STRING:Ljava/lang/Class;

    if-ne p0, p1, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_4
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_5

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_5
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_6

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_6
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_8

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object p0

    :cond_7
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_JSON_NODE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    invoke-static {p1, v0, p2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public _isStdJDKCollection(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->u(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public _resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/d;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/e;

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/e;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 p3, 0x8

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(I)V

    const-class p3, Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/e;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_3
    invoke-static {p2, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/e;->e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V

    :cond_4
    :goto_2
    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/e;->f(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/e;->c:Lcom/fasterxml/jackson/databind/introspect/r;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v10

    iget-boolean v11, p0, Lcom/fasterxml/jackson/databind/introspect/e;->g:Z

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v1 .. v11}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    move-object p1, p3

    :goto_3
    return-object p1
.end method

.method public _resolveAnnotatedWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/d;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/e;

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/e;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/e;->g()Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Z)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forRecord(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object p3

    :goto_0
    move-object v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    return-object p0
.end method

.method public collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object v2

    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {p3}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    invoke-virtual {p3, p5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->withSetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    return-object p0
.end method

.method public collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2, p4}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    return-object p0
.end method

.method public collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Z)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    return-object p0
.end method

.method public constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/d;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/b0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/b0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)V

    return-object p0
.end method

.method public constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/d;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/b0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez p5, :cond_0

    const-string p5, "set"

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->withSetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/b0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)V

    return-object p0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/introspect/s;
    .locals 0

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;-><init>()V

    return-object p0
.end method

.method public bridge synthetic forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/p;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V

    return-object p1
.end method

.method public forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V

    return-object p1
.end method

.method public bridge synthetic forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/r;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/p;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p0

    return-object p0
.end method

.method public forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Z)Lcom/fasterxml/jackson/databind/introspect/b0;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V

    :cond_0
    return-object v0
.end method
