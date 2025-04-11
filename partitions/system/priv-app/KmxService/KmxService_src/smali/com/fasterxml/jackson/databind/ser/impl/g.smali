.class public final Lcom/fasterxml/jackson/databind/ser/impl/g;
.super Lcom/fasterxml/jackson/databind/ser/impl/i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Lcom/fasterxml/jackson/databind/o;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/i;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/i;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->c:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->b:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->c:Lcom/fasterxml/jackson/databind/o;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/d;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V

    return-object v6
.end method

.method public final d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/g;->c:Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
