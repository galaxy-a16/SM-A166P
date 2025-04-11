.class public final Lcom/fasterxml/jackson/databind/deser/std/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->c:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    const/16 v2, 0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->b:I

    aput-object p1, v0, v1

    return-void
.end method
