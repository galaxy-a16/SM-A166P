.class public final Lcom/fasterxml/jackson/databind/ser/impl/d;
.super Lcom/fasterxml/jackson/databind/ser/impl/i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:Lcom/fasterxml/jackson/databind/o;

.field public final e:Lcom/fasterxml/jackson/databind/o;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/i;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/i;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->d:Lcom/fasterxml/jackson/databind/o;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:Ljava/lang/Class;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->e:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/h;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/h;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->b:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->d:Lcom/fasterxml/jackson/databind/o;

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/h;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/h;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->e:Lcom/fasterxml/jackson/databind/o;

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/h;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/h;

    invoke-direct {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/h;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/f;

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/f;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/i;[Lcom/fasterxml/jackson/databind/ser/impl/h;)V

    return-object p1
.end method

.method public final d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->d:Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->e:Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
