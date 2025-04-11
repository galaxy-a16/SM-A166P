.class public final Lcom/fasterxml/jackson/databind/deser/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field public final c:I

.field public final d:[Lva/f;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lva/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/deser/impl/a;
    .locals 7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    new-array v1, v0, [Lva/f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v4

    new-instance v5, Lva/f;

    if-nez p2, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    aget-object v6, p2, v2

    :goto_1
    invoke-direct {v5, v3, v6, v4}, Lva/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/a;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/a;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lva/f;I)V

    return-object p2
.end method


# virtual methods
.method public final b(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object p1, v0, p1

    iget-object p1, p1, Lva/f;->a:Ljava/lang/Object;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object p0, p0, p1

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(I)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lva/f;

    aget-object p0, p0, p1

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/q;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
