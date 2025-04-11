.class public final Lcom/fasterxml/jackson/databind/introspect/p;
.super Lcom/fasterxml/jackson/databind/c;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/Class;


# instance fields
.field public final b:Lcom/fasterxml/jackson/databind/introspect/b0;

.field public final c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

.field public final d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final e:Lcom/fasterxml/jackson/databind/introspect/d;

.field public f:[Ljava/lang/Class;

.field public g:Z

.field public h:Ljava/util/List;

.field public final i:Lcom/fasterxml/jackson/databind/introspect/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/p;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    :goto_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/p;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/b0;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/b0;->d:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/b0;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/b0;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    .line 4
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/b0;->g:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/introspect/a0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/introspect/a0;)Lcom/fasterxml/jackson/databind/introspect/a0;

    move-result-object v1

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->i:Lcom/fasterxml/jackson/databind/introspect/a0;

    return-void
.end method

.method public static g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/d;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()[Ljava/lang/Class;
    .locals 3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->g:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/b;)[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/p;->j:[Ljava/lang/Class;

    :cond_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->f:[Ljava/lang/Class;

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->f:[Ljava/lang/Class;

    return-object p0
.end method

.method public final b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    if-eqz p0, :cond_2

    if-nez v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final d()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object v0

    iget-object v0, v0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v3, v5, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v3, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "valueOf"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "fromString"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    const-class v6, Ljava/lang/String;

    if-eq v3, v6, :cond_5

    const-class v6, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_1
    move v4, v5

    :cond_6
    :goto_2
    if-eqz v4, :cond_1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1
.end method

.method public final e(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/j;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/util/j;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/fasterxml/jackson/databind/util/j;

    return-object p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_5

    check-cast p1, Ljava/lang/Class;

    const-class v1, Lcom/fasterxml/jackson/databind/util/i;

    if-eq p1, v1, :cond_4

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->s(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-class v0, Lcom/fasterxml/jackson/databind/util/j;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/h;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/util/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/util/j;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; expected Class<Converter>"

    invoke-static {p1, v0, v1}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Converter definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type Converter or Class<Converter> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->h:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/b0;->j:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/p;->h:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->h:Ljava/util/List;

    return-object p0
.end method

.method public final h(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/q;->r(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
