.class public final Lcom/fasterxml/jackson/databind/introspect/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/introspect/j0;

.field public final b:Ljava/lang/reflect/Field;

.field public c:Lcom/fasterxml/jackson/databind/introspect/n;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/g;->a:Lcom/fasterxml/jackson/databind/introspect/j0;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/g;->b:Ljava/lang/reflect/Field;

    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/k;->c:Lcom/fasterxml/jackson/databind/introspect/k;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    return-void
.end method
