.class public final Lcom/fasterxml/jackson/databind/introspect/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

.field public static final i:Ljava/lang/Class;

.field public static final j:Ljava/lang/Class;

.field public static final k:Ljava/lang/Class;

.field public static final l:Ljava/lang/Class;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

.field public final b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final c:Lcom/fasterxml/jackson/databind/introspect/r;

.field public final d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/Class;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->i:Ljava/lang/Class;

    const-class v0, Ljava/lang/Enum;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->j:Ljava/lang/Class;

    const-class v0, Ljava/util/List;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->k:Ljava/lang/Class;

    const-class v0, Ljava/util/Map;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->c:Lcom/fasterxml/jackson/databind/introspect/r;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3, v0}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Ljava/lang/Class;

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->u(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/r;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->c:Lcom/fasterxml/jackson/databind/introspect/r;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p3, p2}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Ljava/lang/Class;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->g:Z

    return-void
.end method

.method public static d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/e;->k:Ljava/lang/Class;

    if-eq v0, p2, :cond_3

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/e;->l:Ljava/lang/Class;

    if-ne v0, p2, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getInterfaces()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p2, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/e;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/e;->i:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/e;->j:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getInterfaces()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/e;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/e;->e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/ArrayList;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static h(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/d;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/e;

    invoke-direct {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/e;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/r;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/e;->g()Lcom/fasterxml/jackson/databind/introspect/d;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/n;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/n;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/e;->c(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final b(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/n;
    .locals 2

    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/e;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eq p3, p2, :cond_1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_1

    if-ne p3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public final c(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;
    .locals 4

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    instance-of v3, v2, Ljava/lang/annotation/Target;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/annotation/Retention;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/n;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/n;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/e;->c(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final f(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;
    .locals 7

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/e;->h:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->c:Lcom/fasterxml/jackson/databind/introspect/r;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->hasMixIns()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->g:Z

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/k;->c:Lcom/fasterxml/jackson/databind/introspect/k;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Ljava/lang/Class;

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/e;->b(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v0

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/databind/introspect/e;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/fasterxml/jackson/databind/introspect/e;->b(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v0

    :cond_7
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/databind/introspect/e;->a(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v0

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    const-class p1, Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/e;->b(Lcom/fasterxml/jackson/databind/introspect/n;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v0

    :cond_9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/n;->c()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lcom/fasterxml/jackson/databind/introspect/d;
    .locals 12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/e;->f(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/e;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/e;->c:Lcom/fasterxml/jackson/databind/introspect/r;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fasterxml/jackson/databind/introspect/e;->g:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    return-object v11
.end method
