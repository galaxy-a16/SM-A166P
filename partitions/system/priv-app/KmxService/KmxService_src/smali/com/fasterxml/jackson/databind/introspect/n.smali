.class public abstract Lcom/fasterxml/jackson/databind/introspect/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/n;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;
.end method

.method public abstract b()Lcom/fasterxml/jackson/databind/introspect/o;
.end method

.method public abstract c()Lcom/fasterxml/jackson/databind/util/a;
.end method

.method public abstract d(Ljava/lang/annotation/Annotation;)Z
.end method
