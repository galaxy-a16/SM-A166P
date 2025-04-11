.class public final Lcom/fasterxml/jackson/databind/introspect/k;
.super Lcom/fasterxml/jackson/databind/introspect/n;
.source "SourceFile"


# static fields
.field public static final c:Lcom/fasterxml/jackson/databind/introspect/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/k;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/k;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/k;->c:Lcom/fasterxml/jackson/databind/introspect/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/m;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/n;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/introspect/m;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public final b()Lcom/fasterxml/jackson/databind/introspect/o;
    .locals 0

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/o;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/o;-><init>()V

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/databind/util/a;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    return-object p0
.end method

.method public final d(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
