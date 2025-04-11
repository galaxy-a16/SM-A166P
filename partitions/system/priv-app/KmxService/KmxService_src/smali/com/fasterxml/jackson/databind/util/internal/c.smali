.class public abstract Lcom/fasterxml/jackson/databind/util/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lcom/fasterxml/jackson/databind/util/internal/a;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    move-object v1, p0

    check-cast v1, Lcom/fasterxml/jackson/databind/util/internal/b;

    iget v2, v1, Lcom/fasterxml/jackson/databind/util/internal/b;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v1

    goto :goto_1

    :goto_0
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getPrevious()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/c;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
