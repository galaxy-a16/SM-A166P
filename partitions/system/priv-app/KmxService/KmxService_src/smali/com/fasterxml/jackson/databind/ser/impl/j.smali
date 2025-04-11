.class public final synthetic Lcom/fasterxml/jackson/databind/ser/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/fasterxml/jackson/databind/ser/impl/k;

.field public final synthetic b:[Landroidx/emoji2/text/t;


# direct methods
.method public synthetic constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/k;[Landroidx/emoji2/text/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/j;->a:Lcom/fasterxml/jackson/databind/ser/impl/k;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/j;->b:[Landroidx/emoji2/text/t;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/fasterxml/jackson/databind/util/b0;

    check-cast p2, Lcom/fasterxml/jackson/databind/o;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/j;->a:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/fasterxml/jackson/databind/util/b0;->a:I

    iget v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    and-int/2addr v0, v1

    new-instance v1, Landroidx/emoji2/text/t;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/j;->b:[Landroidx/emoji2/text/t;

    aget-object v2, p0, v0

    invoke-direct {v1, v2, p1, p2}, Landroidx/emoji2/text/t;-><init>(Landroidx/emoji2/text/t;Lcom/fasterxml/jackson/databind/util/b0;Lcom/fasterxml/jackson/databind/o;)V

    aput-object v1, p0, v0

    return-void
.end method
