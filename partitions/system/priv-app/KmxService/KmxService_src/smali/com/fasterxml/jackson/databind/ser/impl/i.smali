.class public abstract Lcom/fasterxml/jackson/databind/ser/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/i;->a:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/i;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/i;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lp1/c;
    .locals 0

    invoke-virtual {p1, p3, p2}, Lcom/fasterxml/jackson/databind/z;->findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    new-instance p2, Lp1/c;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/ser/impl/i;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;

    move-result-object p0

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1, p0}, Lp1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final b(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Lp1/c;
    .locals 0

    invoke-virtual {p1, p3, p2}, Lcom/fasterxml/jackson/databind/z;->findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    new-instance p2, Lp1/c;

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/ser/impl/i;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;

    move-result-object p0

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1, p0}, Lp1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public abstract c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;
.end method

.method public abstract d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
.end method
