.class public final Lcom/fasterxml/jackson/databind/util/v;
.super Lcom/fasterxml/jackson/databind/introspect/q;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field public final d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field public final e:Lcom/fasterxml/jackson/databind/PropertyName;

.field public final f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/q;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/v;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/v;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez p4, :cond_0

    sget-object p4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :cond_0
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/v;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/util/v;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method public static w(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/v;
    .locals 6

    if-eqz p4, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p4

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p4, Lcom/fasterxml/jackson/databind/introspect/q;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    :goto_1
    move-object v5, p4

    new-instance p4, Lcom/fasterxml/jackson/databind/util/v;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    move-object v0, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/v;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object p4
.end method


# virtual methods
.method public final c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public final getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p0
.end method

.method public final getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/v;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/v;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object p0
.end method

.method public final m()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez p0, :cond_0

    const-class p0, Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/b;->getRawType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return p0
.end method

.method public final r(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/v;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/v;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
