.class public final Lcom/fasterxml/jackson/databind/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/fasterxml/jackson/databind/util/l;

.field public b:Lcom/fasterxml/jackson/databind/util/l;

.field public c:I

.field public d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/s;->a:Lcom/fasterxml/jackson/databind/util/l;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/l;->a:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v0, p4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/l;->b:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should have gotten "

    const-string p3, " entries, got "

    invoke-static {p1, p2, p3, v1}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->b:Lcom/fasterxml/jackson/databind/util/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/l;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->b:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->a:Lcom/fasterxml/jackson/databind/util/l;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/s;->c:I

    return-void
.end method

.method public final c([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/util/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/l;-><init>(Lcom/fasterxml/jackson/databind/util/l;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/s;->a:Lcom/fasterxml/jackson/databind/util/l;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->b:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->a:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/s;->b:Lcom/fasterxml/jackson/databind/util/l;

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/util/l;->b:Lcom/fasterxml/jackson/databind/util/l;

    if-nez v2, :cond_3

    iput-object v0, v1, Lcom/fasterxml/jackson/databind/util/l;->b:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->b:Lcom/fasterxml/jackson/databind/util/l;

    :goto_0
    array-length p1, p1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/s;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/s;->c:I

    const/16 p0, 0x4000

    if-ge p1, p0, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x40000

    if-ge p1, p0, :cond_2

    shr-int/lit8 p0, p1, 0x2

    add-int/2addr p1, p0

    :cond_2
    :goto_1
    new-array p0, p1, [Ljava/lang/Object;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final d([Ljava/lang/Object;ILjava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->a:Lcom/fasterxml/jackson/databind/util/l;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/l;->a:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/l;->b:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/s;->b()V

    return-void
.end method

.method public final e([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/s;->c:I

    add-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/util/s;->a([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/s;->b()V

    return-object p3
.end method

.method public final f()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/s;->b()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final g([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/s;->b()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p2, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/s;->d:[Ljava/lang/Object;

    return-object p0
.end method
