.class public final Lcom/fasterxml/jackson/databind/introspect/f;
.super Lcom/fasterxml/jackson/databind/introspect/t;
.source "SourceFile"


# instance fields
.field public final d:Z

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/j0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/t;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/f;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/r;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/t;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/f;->e:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    return-void
.end method


# virtual methods
.method public final e(Lcom/fasterxml/jackson/databind/introspect/j0;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Map;
    .locals 9

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    new-instance v1, Lp1/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lp1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/f;->e(Lcom/fasterxml/jackson/databind/introspect/j0;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/g;

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/g;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Field;)V

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v7

    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    :cond_5
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/r;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_e

    sget-object v1, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eq p1, p2, :cond_8

    :cond_7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_8

    if-ne p1, p2, :cond_7

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v1, p2

    move v2, v3

    :goto_4
    if-ge v2, v1, :cond_9

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    move v6, v3

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    move v6, v5

    :goto_6
    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/g;

    if-eqz v6, :cond_d

    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v4

    iput-object v4, v6, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object v0
.end method

.method public final f(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/f;->b:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p1, Lcom/fasterxml/jackson/databind/util/f;->b:[Ljava/lang/annotation/Annotation;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/t;->b([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->b:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->b:[Ljava/lang/annotation/Annotation;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    return-object p0
.end method

.method public final g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/o;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/k;->c:Lcom/fasterxml/jackson/databind/introspect/k;

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v3

    if-eqz p2, :cond_0

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/t;->b:[Lcom/fasterxml/jackson/databind/introspect/o;

    return-object p0
.end method

.method public final h(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/t;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/t;->b:[Lcom/fasterxml/jackson/databind/introspect/o;

    if-nez v1, :cond_2

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p3}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-array v2, v0, [Lcom/fasterxml/jackson/databind/introspect/o;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object p0

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/t;->b([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-direct {v0, p2, p1, p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/t;->b([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/t;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez p3, :cond_6

    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, v2, p3}, Lcom/fasterxml/jackson/databind/introspect/f;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object v0
.end method

.method public final i(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 10

    iget v0, p1, Lcom/fasterxml/jackson/databind/util/f;->d:I

    if-gez v0, :cond_0

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v0

    iput v0, p1, Lcom/fasterxml/jackson/databind/util/f;->d:I

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/t;->b:[Lcom/fasterxml/jackson/databind/introspect/o;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/t;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/f;->e:Ljava/lang/Object;

    if-nez v4, :cond_3

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/j0;

    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/o;

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance p2, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    aput-object p2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, v5, v3, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object p0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/j0;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/f;->f(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-direct {v0, v5, v3, p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object v0

    :cond_4
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/util/f;->c:[[Ljava/lang/annotation/Annotation;

    if-nez v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iput-object v1, p1, Lcom/fasterxml/jackson/databind/util/f;->c:[[Ljava/lang/annotation/Annotation;

    :cond_5
    array-length v4, v1

    const/4 v6, 0x0

    if-eq v0, v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->t(Ljava/lang/Class;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v7, :cond_6

    array-length v7, v1

    add-int/2addr v7, v9

    if-ne v0, v7, :cond_6

    array-length v4, v1

    add-int/2addr v4, v9

    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    array-length v7, v1

    invoke-static {v1, v2, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/databind/introspect/f;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v1

    :goto_2
    move-object v6, v1

    move-object v1, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_7

    array-length v4, v1

    add-int/2addr v4, v8

    if-ne v0, v4, :cond_7

    array-length v4, v1

    add-int/2addr v4, v8

    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    array-length v7, v1

    invoke-static {v1, v2, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/t;->c:[Ljava/lang/annotation/Annotation;

    aput-object v1, v4, v2

    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/databind/introspect/f;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v9

    const-string p2, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->c:[[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_b

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p2, Lcom/fasterxml/jackson/databind/util/f;->c:[[Ljava/lang/annotation/Annotation;

    :cond_b
    move-object v6, v0

    :goto_4
    invoke-virtual {p0, v1, v6}, Lcom/fasterxml/jackson/databind/introspect/f;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v6

    :goto_5
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/j0;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/f;->f(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-direct {v0, v5, v3, p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    return-object v0
.end method
