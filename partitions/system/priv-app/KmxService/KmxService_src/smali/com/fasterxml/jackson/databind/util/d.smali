.class public final Lcom/fasterxml/jackson/databind/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/d;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/d;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/d;->b:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/d;->a:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/d;->b:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/d;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/d;->b:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
