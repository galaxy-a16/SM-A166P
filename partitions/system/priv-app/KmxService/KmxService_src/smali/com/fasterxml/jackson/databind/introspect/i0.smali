.class public final Lcom/fasterxml/jackson/databind/introspect/i0;
.super Lcom/fasterxml/jackson/databind/introspect/q;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final m:Lcom/fasterxml/jackson/databind/b;


# instance fields
.field public final b:Z

.field public final c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

.field public final d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final e:Lcom/fasterxml/jackson/databind/PropertyName;

.field public final f:Lcom/fasterxml/jackson/databind/PropertyName;

.field public g:Landroidx/appcompat/widget/y;

.field public h:Landroidx/appcompat/widget/y;

.field public i:Landroidx/appcompat/widget/y;

.field public j:Landroidx/appcompat/widget/y;

.field public transient k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field public transient l:Lcom/fasterxml/jackson/databind/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/b;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/b;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/i0;->m:Lcom/fasterxml/jackson/databind/b;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 6

    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/q;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/i0;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/q;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    return-void
.end method

.method public static A(Landroidx/appcompat/widget/y;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/o;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/i0;->B(Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/introspect/o;)Landroidx/appcompat/widget/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/appcompat/widget/y;

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/y;

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    move-object v4, v0

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Landroidx/appcompat/widget/y;->d:Z

    iget-boolean v6, p0, Landroidx/appcompat/widget/y;->e:Z

    iget-boolean v7, p0, Landroidx/appcompat/widget/y;->f:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static D(Landroidx/appcompat/widget/y;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    :goto_0
    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static E(Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->E(Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/o;->b(Lcom/fasterxml/jackson/databind/introspect/o;Lcom/fasterxml/jackson/databind/introspect/o;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static F(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "get"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static varargs G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 2

    aget-object v0, p1, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->E(Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    array-length v1, p1

    if-ge p0, v1, :cond_1

    aget-object v1, p1, p0

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/i0;->G(I[Landroidx/appcompat/widget/y;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/o;->b(Lcom/fasterxml/jackson/databind/introspect/o;Lcom/fasterxml/jackson/databind/introspect/o;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static w(Landroidx/appcompat/widget/y;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static x(Landroidx/appcompat/widget/y;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static y(Landroidx/appcompat/widget/y;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static z(Landroidx/appcompat/widget/y;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final C(Ljava/util/Set;Ljava/util/HashMap;Landroidx/appcompat/widget/y;)V
    .locals 9

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v2, v0, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/i0;

    if-nez v2, :cond_1

    new-instance v8, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    move-object v2, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/introspect/i0;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    invoke-virtual {p2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-ne p3, v1, :cond_2

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-ne p3, v1, :cond_3

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-ne p3, v1, :cond_4

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-ne p3, v1, :cond_5

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Internal error: mismatched accessors, property: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-boolean v1, v0, Landroidx/appcompat/widget/y;->e:Z

    if-nez v1, :cond_7

    :goto_2
    iget-object v0, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Conflicting/ambiguous property name definitions (implicit name "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->x(Lcom/fasterxml/jackson/databind/PropertyName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): found multiple explicit names: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but also implicit accessor: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    return-void
.end method

.method public final H(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-eq v0, v3, :cond_5

    if-ge v0, v3, :cond_4

    return-object p2

    :cond_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final I(Lcom/fasterxml/jackson/databind/introspect/i0;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    return-void
.end method

.method public final J()Ljava/util/Set;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->D(Landroidx/appcompat/widget/y;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->D(Landroidx/appcompat/widget/y;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->D(Landroidx/appcompat/widget/y;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->D(Landroidx/appcompat/widget/y;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final K(Lcom/fasterxml/jackson/databind/introspect/h0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/h0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/h0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/h0;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

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

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

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

.method public final c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final d()Lcom/fasterxml/jackson/databind/introspect/a0;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/introspect/d0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->K(Lcom/fasterxml/jackson/databind/introspect/h0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/a0;

    return-object p0
.end method

.method public final e()Lcom/fasterxml/jackson/databind/b;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->l:Lcom/fasterxml/jackson/databind/b;

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/i0;->m:Lcom/fasterxml/jackson/databind/b;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/e0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/fasterxml/jackson/databind/introspect/e0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->K(Lcom/fasterxml/jackson/databind/introspect/h0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/b;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->l:Lcom/fasterxml/jackson/databind/b;

    return-object v0
.end method

.method public final f()[Ljava/lang/Class;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/introspect/d0;-><init>(Lcom/fasterxml/jackson/databind/introspect/i0;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->K(Lcom/fasterxml/jackson/databind/introspect/h0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public final getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p0
.end method

.method public final getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_5

    :goto_0
    iget-object v2, v2, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-eqz v2, :cond_1

    :goto_1
    goto :goto_0

    :goto_2
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    :goto_3
    if-nez v2, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto/16 :goto_9

    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    sget-object v4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v4

    goto :goto_4

    :cond_8
    invoke-static {v4, v5, v6, v7}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    if-eqz v4, :cond_a

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findMergeInfo(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lcom/fasterxml/jackson/databind/x;

    invoke-direct {v7, v4, v6}, Lcom/fasterxml/jackson/databind/x;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/x;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    :cond_9
    move v7, v6

    goto :goto_5

    :cond_a
    move v7, v5

    :goto_5
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    goto :goto_6

    :cond_b
    move v7, v5

    :cond_c
    move-object v3, v0

    :goto_6
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez v7, :cond_d

    if-eqz v0, :cond_d

    if-nez v3, :cond_11

    :cond_d
    instance-of v9, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v9, :cond_e

    move-object v9, v2

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v9, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    :goto_7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/d;->getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v9

    if-eqz v9, :cond_10

    if-nez v0, :cond_f

    invoke-virtual {v9}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v0

    :cond_f
    if-nez v3, :cond_10

    invoke-virtual {v9}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    :cond_10
    if-eqz v7, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/d;->getMergeable()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/fasterxml/jackson/databind/x;

    invoke-direct {v2, v4, v6}, Lcom/fasterxml/jackson/databind/x;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/x;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    goto :goto_8

    :cond_11
    move v6, v7

    :cond_12
    :goto_8
    if-nez v6, :cond_13

    if-eqz v0, :cond_13

    if-nez v3, :cond_16

    :cond_13
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v2

    if-nez v0, :cond_14

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v0

    :cond_14
    if-nez v3, :cond_15

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    :cond_15
    if-eqz v6, :cond_16

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultMergeable()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v4, :cond_16

    new-instance v2, Lcom/fasterxml/jackson/databind/x;

    invoke-direct {v2, v4, v5}, Lcom/fasterxml/jackson/databind/x;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/x;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    :cond_16
    if-nez v0, :cond_17

    if-eqz v3, :cond_18

    :cond_17
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withNulls(Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/annotation/Nulls;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    :cond_18
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :cond_19
    :goto_9
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_1

    iget-object p0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object p0

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    iget-object p0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/introspect/g0;-><init>(Landroidx/appcompat/widget/y;I)V

    return-object v0
.end method

.method public final j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    :goto_0
    iget-object v0, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Multiple fields representing property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public final k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    iget-object v2, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v1, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v2, v4, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/introspect/i0;->F(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v2

    iget-object v4, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/introspect/i0;->F(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v5

    if-eq v2, v5, :cond_5

    if-ge v2, v5, :cond_4

    :goto_1
    move-object v0, v1

    :cond_4
    :goto_2
    iget-object v1, v1, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflicting getter definitions for property \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->h()Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    :goto_3
    iget-object p0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final m()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->m()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-eqz v1, :cond_8

    iget-object v2, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v3, v1, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/databind/introspect/i0;->H(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    iget-object v4, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    move-object v0, v1

    :goto_1
    iget-object v1, v1, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, v1, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    if-eqz v1, :cond_6

    iget-object v3, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v4, v1, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/databind/introspect/i0;->H(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    iget-object v5, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    if-ne v3, v5, :cond_4

    goto :goto_2

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->h()Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    iget-object p0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0

    :cond_7
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, " vs "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const-string p0, "Conflicting setter definitions for property \"%s\": %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->h()Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    :goto_3
    iget-object p0, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0
.end method

.method public final p()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->x(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->x(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->x(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->w(Landroidx/appcompat/widget/y;)Z

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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; ctors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->g:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->w(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->i:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->w(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->j:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->w(Landroidx/appcompat/widget/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->h:Landroidx/appcompat/widget/y;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/introspect/i0;->w(Landroidx/appcompat/widget/y;)Z

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

.method public final v()Z
    .locals 2

    new-instance v0, Lf9/b;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/i0;->K(Lcom/fasterxml/jackson/databind/introspect/h0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
