.class public final Lcom/fasterxml/jackson/databind/ser/std/b;
.super Lcom/fasterxml/jackson/databind/jsontype/k;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/jsontype/k;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/k;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;->c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->b:Ljava/lang/Object;

    iput-object v0, p2, Lf2/c;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/k;->e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/b;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/k;->f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object p0

    return-object p0
.end method
