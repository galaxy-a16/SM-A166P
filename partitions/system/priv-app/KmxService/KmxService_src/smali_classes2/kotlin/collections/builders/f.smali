.class public final Lkotlin/collections/builders/f;
.super Lkotlin/collections/builders/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/collections/builders/e;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/e;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/e;->a:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lkotlin/collections/builders/e;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/e;->b:I

    iput v0, p0, Lkotlin/collections/builders/e;->c:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/e;->c:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/builders/e;->a()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
