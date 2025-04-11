.class public final Lcom/fasterxml/jackson/databind/introspect/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

.field public final b:Lcom/fasterxml/jackson/databind/introspect/a;

.field public final c:Z

.field public final d:Lcom/fasterxml/jackson/databind/JavaType;

.field public final e:Lcom/fasterxml/jackson/databind/introspect/d;

.field public final f:Lcom/fasterxml/jackson/databind/introspect/l0;

.field public final g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final h:Z

.field public i:Z

.field public j:Ljava/util/LinkedHashMap;

.field public k:Ljava/util/LinkedList;

.field public l:Ljava/util/HashMap;

.field public m:Ljava/util/LinkedList;

.field public n:Ljava/util/LinkedList;

.field public o:Ljava/util/LinkedList;

.field public p:Ljava/util/LinkedList;

.field public q:Ljava/util/LinkedList;

.field public r:Ljava/util/LinkedList;

.field public s:Ljava/util/HashSet;

.field public t:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->c:Z

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->d:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->h:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->h:Z

    invoke-static {}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/databind/introspect/l0;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->f:Lcom/fasterxml/jackson/databind/introspect/l0;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->b:Lcom/fasterxml/jackson/databind/introspect/a;

    sget-object p0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    return-void
.end method

.method public static f(Lcom/fasterxml/jackson/databind/introspect/i0;Ljava/util/LinkedList;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, p0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static g(Ljava/util/LinkedList;)Z
    .locals 5

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v4, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v4, :cond_1

    instance-of v1, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v1, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    instance-of v1, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v8, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez v8, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    move-object v7, v2

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v2, :cond_7

    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->c:Z

    invoke-direct {v2, v3, v0, v4, v7}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/introspect/b0;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/fasterxml/jackson/databind/introspect/i0;

    move-result-object v2

    :cond_7
    :goto_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance p1, Landroidx/appcompat/widget/y;

    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object p1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->l:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->s:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->s:Ljava/util/HashSet;

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->s:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final d(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->getId()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->t:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->t:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    if-eq p0, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate injectable value with id \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' (of type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/fasterxml/jackson/databind/introspect/i0;
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->c:Z

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->c:Z

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez v2, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->f:Lcom/fasterxml/jackson/databind/introspect/l0;

    iget-object v11, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->b:Lcom/fasterxml/jackson/databind/introspect/a;

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v3, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsKey(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    if-nez v13, :cond_2

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    iput-object v13, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    :cond_2
    iget-object v13, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValue(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    :cond_4
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v13, :cond_12

    if-eqz v8, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_7
    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->modifyFieldName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v8, v9}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v11

    invoke-virtual {v12, v3, v14, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRenameByField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->l:Ljava/util/HashMap;

    if-nez v15, :cond_9

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->l:Ljava/util/HashMap;

    :cond_9
    iget-object v15, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->l:Ljava/util/HashMap;

    invoke-virtual {v15, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v11

    goto :goto_2

    :cond_b
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_c

    const/4 v13, 0x1

    goto :goto_3

    :cond_c
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-static {v8, v9}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v16, v9

    move/from16 v17, v11

    goto :goto_4

    :cond_d
    move-object/from16 v16, v11

    move/from16 v17, v13

    :goto_4
    if-eqz v16, :cond_e

    const/4 v9, 0x1

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_f

    invoke-interface {v10, v14}, Lcom/fasterxml/jackson/databind/introspect/l0;->isFieldVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Z

    move-result v9

    :cond_f
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v10

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->isTransient()Z

    move-result v11

    if-eqz v11, :cond_10

    if-nez v13, :cond_10

    const/4 v9, 0x0

    if-eqz v5, :cond_10

    const/4 v10, 0x1

    :cond_10
    move/from16 v18, v9

    move/from16 v19, v10

    if-eqz v4, :cond_11

    if-nez v16, :cond_11

    if-nez v19, :cond_11

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    if-eqz v9, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v0, v8, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/fasterxml/jackson/databind/introspect/i0;

    move-result-object v8

    new-instance v9, Landroidx/appcompat/widget/y;

    iget-object v15, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    move-object v13, v9

    invoke-direct/range {v13 .. v19}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    goto/16 :goto_1

    :cond_12
    :goto_6
    if-eqz v13, :cond_14

    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    if-nez v9, :cond_13

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    :cond_13
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v9, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    if-nez v8, :cond_15

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    :cond_15
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->p:Ljava/util/LinkedList;

    :goto_7
    invoke-virtual {v8, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->c()Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/j;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v7, :cond_17

    const-class v7, Ljava/lang/Void;

    if-ne v5, v7, :cond_18

    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_8

    :cond_18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    if-nez v5, :cond_19

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    :cond_19
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->m:Ljava/util/LinkedList;

    goto :goto_9

    :cond_1a
    invoke-virtual {v12, v3, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsKey(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    if-nez v5, :cond_1b

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    :cond_1b
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    goto :goto_9

    :cond_1c
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValue(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    if-nez v5, :cond_1d

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    :cond_1d
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    :goto_9
    invoke-virtual {v5, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    if-eqz v5, :cond_1f

    const/4 v7, 0x1

    goto :goto_a

    :cond_1f
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_23

    if-nez v8, :cond_20

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_20
    if-nez v8, :cond_22

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_21

    goto/16 :goto_8

    :cond_21
    invoke-interface {v10, v14}, Lcom/fasterxml/jackson/databind/introspect/l0;->isIsGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v13

    goto :goto_b

    :cond_22
    invoke-interface {v10, v14}, Lcom/fasterxml/jackson/databind/introspect/l0;->isGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v13

    goto :goto_b

    :cond_23
    if-nez v8, :cond_24

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_24

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_24
    if-nez v8, :cond_25

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_25
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-static {v8, v9}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    const/4 v7, 0x0

    :cond_26
    const/4 v13, 0x1

    :goto_b
    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v13

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/introspect/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v19

    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/fasterxml/jackson/databind/introspect/i0;

    move-result-object v5

    new-instance v7, Landroidx/appcompat/widget/y;

    iget-object v15, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    move-object v13, v7

    invoke-direct/range {v13 .. v19}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    goto/16 :goto_8

    :cond_27
    const/4 v8, 0x1

    if-ne v5, v8, :cond_2f

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    if-eqz v5, :cond_28

    const/4 v7, 0x1

    goto :goto_c

    :cond_28
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_2b

    if-nez v8, :cond_29

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_29
    if-nez v8, :cond_2a

    goto/16 :goto_8

    :cond_2a
    invoke-interface {v10, v14}, Lcom/fasterxml/jackson/databind/introspect/l0;->isSetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v13

    :goto_d
    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v13

    goto :goto_e

    :cond_2b
    if-nez v8, :cond_2c

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/fasterxml/jackson/databind/introspect/a;->findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2c
    if-nez v8, :cond_2d

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_2d
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-static {v8, v9}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    const/4 v7, 0x0

    :cond_2e
    const/4 v13, 0x1

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/introspect/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v19

    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/fasterxml/jackson/databind/introspect/i0;

    move-result-object v5

    new-instance v7, Landroidx/appcompat/widget/y;

    iget-object v15, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    move-object v13, v7

    invoke-direct/range {v13 .. v19}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    goto/16 :goto_8

    :cond_2f
    if-ne v5, v7, :cond_17

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    if-nez v5, :cond_30

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    :cond_30
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_31
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/introspect/d;->n:Ljava/lang/Boolean;

    if-nez v4, :cond_34

    sget-object v4, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    iget-object v4, v6, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->w(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object v4, v9

    goto :goto_f

    :cond_32
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_f
    if-eqz v4, :cond_33

    const/4 v4, 0x1

    goto :goto_10

    :cond_33
    const/4 v4, 0x0

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v6, Lcom/fasterxml/jackson/databind/introspect/d;->n:Ljava/lang/Boolean;

    :cond_34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3b

    iget-boolean v4, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->h:Z

    if-nez v4, :cond_35

    goto :goto_13

    :cond_35
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v4

    iget-object v4, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    if-nez v8, :cond_37

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    :cond_37
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v8, :cond_36

    invoke-virtual {v5, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/fasterxml/jackson/databind/introspect/b0;->a(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_38
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v4

    iget-object v4, v4, Lp1/v;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    if-nez v8, :cond_3a

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    :cond_3a
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v8, :cond_39

    invoke-virtual {v5, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/fasterxml/jackson/databind/introspect/b0;->a(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_3b
    :goto_13
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->A(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->A(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->A(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->A(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-eqz v8, :cond_3d

    goto :goto_15

    :cond_3d
    const/4 v8, 0x0

    goto :goto_16

    :cond_3e
    :goto_15
    const/4 v8, 0x1

    :goto_16
    if-nez v8, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_3f
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->z(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_41

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->z(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_41

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->z(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_41

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->z(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-eqz v8, :cond_40

    goto :goto_17

    :cond_40
    const/4 v8, 0x0

    goto :goto_18

    :cond_41
    :goto_17
    const/4 v8, 0x1

    :goto_18
    if-eqz v8, :cond_3c

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->y(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_45

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->y(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_45

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->y(Landroidx/appcompat/widget/y;)Z

    move-result v8

    if-nez v8, :cond_45

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    :goto_19
    if-eqz v8, :cond_43

    iget-boolean v10, v8, Landroidx/appcompat/widget/y;->f:Z

    if-nez v10, :cond_42

    iget-object v10, v8, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v10, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v10, :cond_42

    iget-boolean v10, v8, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v10, :cond_42

    const/4 v8, 0x1

    goto :goto_1a

    :cond_42
    iget-object v8, v8, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/appcompat/widget/y;

    goto :goto_19

    :cond_43
    const/4 v8, 0x0

    :goto_1a
    if-eqz v8, :cond_44

    goto :goto_1b

    :cond_44
    const/4 v8, 0x0

    goto :goto_1c

    :cond_45
    :goto_1b
    const/4 v8, 0x1

    :goto_1c
    if-nez v8, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    :cond_46
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v8, :cond_47

    goto :goto_1d

    :cond_47
    invoke-virtual {v8}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object v8

    :goto_1d
    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v8, :cond_48

    goto :goto_1e

    :cond_48
    invoke-virtual {v8}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object v8

    :goto_1e
    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v8, :cond_49

    goto :goto_1f

    :cond_49
    invoke-virtual {v8}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object v8

    :goto_1f
    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v8, :cond_4a

    goto :goto_20

    :cond_4a
    invoke-virtual {v8}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object v8

    :goto_20
    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->a()Z

    move-result v8

    if-nez v8, :cond_3c

    :goto_21
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/introspect/b0;->c(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_4b
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4c
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x3

    if-eqz v8, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-eqz v2, :cond_4d

    goto :goto_23

    :cond_4d
    move-object v9, v0

    :goto_23
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/e0;

    const/4 v13, 0x1

    invoke-direct {v11, v8, v13}, Lcom/fasterxml/jackson/databind/introspect/e0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;I)V

    sget-object v13, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean v15, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    if-nez v14, :cond_4e

    goto/16 :goto_25

    :cond_4e
    if-eqz v15, :cond_52

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_4f

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4f

    if-eq v14, v13, :cond_4f

    goto/16 :goto_26

    :cond_4f
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_50

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_50

    if-eq v14, v13, :cond_50

    goto/16 :goto_26

    :cond_50
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_51

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_51

    if-eq v14, v13, :cond_51

    goto :goto_26

    :cond_51
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_56

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_56

    if-eq v11, v13, :cond_56

    goto :goto_24

    :cond_52
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_53

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_53

    if-eq v14, v13, :cond_53

    goto :goto_26

    :cond_53
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_54

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_54

    if-eq v14, v13, :cond_54

    goto :goto_26

    :cond_54
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_55

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_55

    if-eq v14, v13, :cond_55

    goto :goto_26

    :cond_55
    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_56

    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v11, v14}, Lcom/fasterxml/jackson/databind/introspect/e0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_56

    if-eq v11, v13, :cond_56

    :goto_24
    move-object v14, v11

    goto :goto_26

    :cond_56
    :goto_25
    const/4 v14, 0x0

    :goto_26
    check-cast v14, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    if-nez v14, :cond_57

    goto :goto_27

    :cond_57
    move-object v13, v14

    :goto_27
    sget-object v11, Lcom/fasterxml/jackson/databind/introspect/f0;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v11, v11, v13

    const/4 v13, 0x1

    if-eq v11, v13, :cond_5f

    if-eq v11, v7, :cond_5e

    if-eq v11, v10, :cond_5d

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v9, :cond_58

    goto :goto_28

    :cond_58
    invoke-virtual {v9}, Landroidx/appcompat/widget/y;->i()Landroidx/appcompat/widget/y;

    move-result-object v9

    :goto_28
    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v9, :cond_59

    goto :goto_29

    :cond_59
    invoke-virtual {v9}, Landroidx/appcompat/widget/y;->i()Landroidx/appcompat/widget/y;

    move-result-object v9

    :goto_29
    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v4, :cond_5a

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v9, :cond_5e

    :cond_5a
    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v9, :cond_5b

    goto :goto_2a

    :cond_5b
    invoke-virtual {v9}, Landroidx/appcompat/widget/y;->i()Landroidx/appcompat/widget/y;

    move-result-object v9

    :goto_2a
    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v9, :cond_5c

    goto :goto_2b

    :cond_5c
    invoke-virtual {v9}, Landroidx/appcompat/widget/y;->i()Landroidx/appcompat/widget/y;

    move-result-object v9

    :goto_2b
    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    goto :goto_2c

    :cond_5d
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v15, :cond_5e

    const/4 v9, 0x0

    goto :goto_2e

    :cond_5e
    :goto_2c
    const/4 v9, 0x0

    goto/16 :goto_22

    :cond_5f
    if-eqz v9, :cond_60

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/introspect/b0;->c(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->J()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_60

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/fasterxml/jackson/databind/introspect/b0;->c(Ljava/lang/String;)V

    goto :goto_2d

    :cond_60
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v15, :cond_4c

    :goto_2e
    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    goto/16 :goto_22

    :cond_61
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v9

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->J()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_62

    goto :goto_2f

    :cond_62
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    if-nez v5, :cond_63

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :cond_63
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_64

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/PropertyName;

    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-direct {v13, v8, v11}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;Lcom/fasterxml/jackson/databind/PropertyName;)V

    invoke-virtual {v5, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_64
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-virtual {v8, v11, v13, v14}, Lcom/fasterxml/jackson/databind/introspect/i0;->C(Ljava/util/Set;Ljava/util/HashMap;Landroidx/appcompat/widget/y;)V

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v8, v11, v13, v14}, Lcom/fasterxml/jackson/databind/introspect/i0;->C(Ljava/util/Set;Ljava/util/HashMap;Landroidx/appcompat/widget/y;)V

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v8, v11, v13, v14}, Lcom/fasterxml/jackson/databind/introspect/i0;->C(Ljava/util/Set;Ljava/util/HashMap;Landroidx/appcompat/widget/y;)V

    iget-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v8, v11, v13, v14}, Lcom/fasterxml/jackson/databind/introspect/i0;->C(Ljava/util/Set;Ljava/util/HashMap;Landroidx/appcompat/widget/y;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2f

    :cond_65
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_66
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v11, :cond_67

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_67
    invoke-virtual {v11, v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->I(Lcom/fasterxml/jackson/databind/introspect/i0;)V

    :goto_31
    iget-object v11, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    invoke-static {v5, v11}, Lcom/fasterxml/jackson/databind/introspect/b0;->f(Lcom/fasterxml/jackson/databind/introspect/i0;Ljava/util/LinkedList;)Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->s:Ljava/util/HashSet;

    if-eqz v5, :cond_66

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_68
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v12, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Lcom/fasterxml/jackson/databind/introspect/b0;->d(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_32

    :cond_69
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/d;->c()Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/j;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_6a

    goto :goto_33

    :cond_6a
    invoke-virtual {v12, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Lcom/fasterxml/jackson/databind/introspect/b0;->d(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_33

    :cond_6b
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    const/4 v8, 0x4

    if-eqz v2, :cond_6e

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v11, :cond_6d

    new-array v8, v8, [Landroidx/appcompat/widget/y;

    const/4 v13, 0x0

    aput-object v11, v8, v13

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    const/4 v14, 0x1

    aput-object v11, v8, v14

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    aput-object v11, v8, v7

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    aput-object v11, v8, v10

    invoke-static {v13, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v8

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v11, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;

    move-result-object v8

    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    goto :goto_34

    :cond_6d
    const/4 v8, 0x0

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v11, :cond_6c

    new-array v13, v10, [Landroidx/appcompat/widget/y;

    aput-object v11, v13, v8

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    const/4 v14, 0x1

    aput-object v11, v13, v14

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    aput-object v11, v13, v7

    invoke-static {v8, v13}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v8

    goto :goto_35

    :cond_6e
    const/4 v11, 0x0

    const/4 v13, 0x1

    iget-object v14, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_6f

    new-array v8, v8, [Landroidx/appcompat/widget/y;

    aput-object v14, v8, v11

    iget-object v14, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    aput-object v14, v8, v13

    iget-object v13, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    aput-object v13, v8, v7

    iget-object v13, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    aput-object v13, v8, v10

    invoke-static {v11, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v8

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {v11, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;

    move-result-object v8

    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    goto :goto_34

    :cond_6f
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz v8, :cond_70

    new-array v13, v10, [Landroidx/appcompat/widget/y;

    aput-object v8, v13, v11

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    const/4 v14, 0x1

    aput-object v8, v13, v14

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    aput-object v8, v13, v7

    invoke-static {v11, v13}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v8

    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v11, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;

    move-result-object v8

    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    goto/16 :goto_34

    :cond_70
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v8, :cond_6c

    new-array v13, v7, [Landroidx/appcompat/widget/y;

    aput-object v8, v13, v11

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v11, v13}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v8

    :goto_35
    iget-object v11, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v11, v8}, Lcom/fasterxml/jackson/databind/introspect/i0;->B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;

    move-result-object v8

    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    goto/16 :goto_34

    :cond_71
    const/4 v4, 0x0

    invoke-virtual {v12, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_72

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v5

    goto :goto_37

    :cond_72
    instance-of v7, v5, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-eqz v7, :cond_73

    goto :goto_36

    :cond_73
    instance-of v7, v5, Ljava/lang/Class;

    if-eqz v7, :cond_a4

    check-cast v5, Ljava/lang/Class;

    const-class v7, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-ne v5, v7, :cond_74

    move-object v5, v9

    goto :goto_37

    :cond_74
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/h;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v7

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/databind/util/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    :goto_36
    check-cast v5, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    :goto_37
    if-eqz v5, :cond_84

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    array-length v8, v7

    move v10, v4

    :goto_38
    if-ge v10, v8, :cond_84

    aget-object v11, v7, v10

    iget-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->u()Z

    move-result v14

    if-eqz v14, :cond_75

    sget-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v14}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v14

    if-eqz v14, :cond_80

    :cond_75
    if-eqz v2, :cond_78

    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_76

    const/4 v14, 0x1

    goto :goto_39

    :cond_76
    move v14, v4

    :goto_39
    if-eqz v14, :cond_77

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v14

    goto/16 :goto_3d

    :cond_77
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->q()Z

    move-result v14

    if-eqz v14, :cond_80

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v14

    goto :goto_3b

    :cond_78
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->s()Z

    move-result v14

    if-eqz v14, :cond_7a

    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v14, :cond_79

    move-object v14, v9

    goto :goto_3a

    :cond_79
    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    :goto_3a
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v3, v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3e

    :cond_7a
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->p()Z

    move-result v14

    if-eqz v14, :cond_7b

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v14

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v3, v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForConstructorParameter(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3e

    :cond_7b
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->q()Z

    move-result v14

    if-eqz v14, :cond_7d

    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v14, :cond_7c

    move-object v14, v9

    goto :goto_3b

    :cond_7c
    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    :goto_3b
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v3, v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3e

    :cond_7d
    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v14, :cond_7e

    const/4 v15, 0x1

    goto :goto_3c

    :cond_7e
    move v15, v4

    :goto_3c
    if-eqz v15, :cond_80

    if-nez v14, :cond_7f

    move-object v14, v9

    goto :goto_3d

    :cond_7f
    iget-object v14, v14, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    :goto_3d
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v3, v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3e

    :cond_80
    move-object v14, v9

    :goto_3e
    if-eqz v14, :cond_82

    invoke-virtual {v13, v14}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_82

    iget-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v13, v14}, Lcom/fasterxml/jackson/databind/PropertyName;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v15

    if-ne v15, v13, :cond_81

    goto :goto_3f

    :cond_81
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-direct {v13, v11, v15}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;Lcom/fasterxml/jackson/databind/PropertyName;)V

    move-object v11, v13

    goto :goto_3f

    :cond_82
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    :goto_3f
    invoke-virtual {v1, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v13, :cond_83

    invoke-interface {v1, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_83
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/introspect/i0;->I(Lcom/fasterxml/jackson/databind/introspect/i0;)V

    :goto_40
    iget-object v13, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    invoke-static {v11, v13}, Lcom/fasterxml/jackson/databind/introspect/b0;->f(Lcom/fasterxml/jackson/databind/introspect/i0;Ljava/util/LinkedList;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_38

    :cond_84
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v7, :cond_85

    goto :goto_42

    :cond_85
    invoke-virtual {v7}, Landroidx/appcompat/widget/y;->e()Landroidx/appcompat/widget/y;

    move-result-object v7

    :goto_42
    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v7, :cond_86

    goto :goto_43

    :cond_86
    invoke-virtual {v7}, Landroidx/appcompat/widget/y;->e()Landroidx/appcompat/widget/y;

    move-result-object v7

    :goto_43
    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v7, :cond_87

    goto :goto_44

    :cond_87
    invoke-virtual {v7}, Landroidx/appcompat/widget/y;->e()Landroidx/appcompat/widget/y;

    move-result-object v7

    :goto_44
    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v7, :cond_88

    goto :goto_45

    :cond_88
    invoke-virtual {v7}, Landroidx/appcompat/widget/y;->e()Landroidx/appcompat/widget/y;

    move-result-object v7

    :goto_45
    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    goto :goto_41

    :cond_89
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8a
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v7

    if-nez v7, :cond_8b

    goto :goto_46

    :cond_8b
    invoke-virtual {v12, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v8

    if-nez v8, :cond_8c

    goto :goto_46

    :cond_8c
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    if-nez v9, :cond_8d

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object v9, v8

    :cond_8d
    new-instance v8, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-direct {v8, v5, v7}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;Lcom/fasterxml/jackson/databind/PropertyName;)V

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_46

    :cond_8e
    if-eqz v9, :cond_90

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v8, :cond_8f

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_8f
    invoke-virtual {v8, v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->I(Lcom/fasterxml/jackson/databind/introspect/i0;)V

    goto :goto_47

    :cond_90
    invoke-virtual {v12, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_91

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->shouldSortPropertiesAlphabetically()Z

    move-result v2

    goto :goto_48

    :cond_91
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_48
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/i0;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->hasIndex()Z

    move-result v7

    if-eqz v7, :cond_92

    const/4 v5, 0x1

    goto :goto_49

    :cond_93
    move v5, v4

    :goto_49
    invoke-virtual {v12, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/d;)[Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_94

    if-nez v5, :cond_94

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    if-nez v7, :cond_94

    if-nez v6, :cond_94

    goto/16 :goto_52

    :cond_94
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v2, :cond_95

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    goto :goto_4a

    :cond_95
    new-instance v8, Ljava/util/LinkedHashMap;

    add-int v9, v7, v7

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_4a
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_96
    new-instance v9, Ljava/util/LinkedHashMap;

    add-int/2addr v7, v7

    invoke-direct {v9, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    if-eqz v6, :cond_9a

    array-length v7, v6

    :goto_4c
    if-ge v4, v7, :cond_9a

    aget-object v10, v6, v4

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v11, :cond_98

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_97
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_98

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v14, v13, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_97

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v13

    :cond_98
    if-eqz v11, :cond_99

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_9a
    if-eqz v5, :cond_9d

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9b
    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/i0;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getIndex()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_9b

    invoke-virtual {v4, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    :cond_9c
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_9d
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    if-eqz v4, :cond_a2

    if-eqz v2, :cond_9e

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v3

    if-eqz v3, :cond_a2

    :cond_9e
    if-eqz v2, :cond_a0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_9f
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    goto :goto_50

    :cond_a0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->k:Ljava/util/LinkedList;

    :goto_50
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a1
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_a2
    invoke-interface {v9, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {v1, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_52
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->j:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    return-void

    :cond_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "; expected Class<PropertyNamingStrategy>"

    invoke-static {v5, v1, v2}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnnotationIntrospector returned PropertyNamingStrategy definition of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->g(Ljava/util/LinkedList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Multiple \'as-value\' properties defined (%s vs %s)"

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->r:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem with definition of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b0;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
