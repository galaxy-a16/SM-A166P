.class public final Lcom/fasterxml/jackson/databind/ser/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->c:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/ser/impl/c;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->c:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->J0(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/c;->b:Lcom/fasterxml/jackson/core/l;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/f;->y0(Lcom/fasterxml/jackson/core/l;)V

    iget-object p3, p3, Lcom/fasterxml/jackson/databind/ser/impl/c;->d:Lcom/fasterxml/jackson/databind/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p1, p2}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/ser/impl/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/c;->e:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p3, Lcom/fasterxml/jackson/databind/ser/impl/c;->d:Lcom/fasterxml/jackson/databind/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p1, p2}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/o;->b:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string p2, "No native support for writing Object Ids"

    invoke-direct {p0, p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
