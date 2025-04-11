.class public final Lcom/fasterxml/jackson/databind/introspect/m;
.super Lcom/fasterxml/jackson/databind/introspect/n;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Class;

.field public d:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/m;->c:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->d:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;
    .locals 7

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/m;->c:Ljava/lang/Class;

    if-ne v2, v4, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/m;->d:Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/n;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->d:Ljava/lang/annotation/Annotation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/l;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public final b()Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/m;->d:Ljava/lang/annotation/Annotation;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/m;->c:Ljava/lang/Class;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/databind/util/a;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/m;->c:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/m;->d:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public final d(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/m;->c:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
