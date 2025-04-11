.class public final Lcom/fasterxml/jackson/core/util/i;
.super Lcom/fasterxml/jackson/core/util/h;
.source "SourceFile"


# instance fields
.field public final d:[Lcom/fasterxml/jackson/core/g;

.field public final e:Z

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>([Lcom/fasterxml/jackson/core/g;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/h;-><init>(Lcom/fasterxml/jackson/core/g;)V

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/i;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/i;->g:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/i;->d:[Lcom/fasterxml/jackson/core/g;

    const/4 p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    return-void
.end method

.method public static p1(Lcom/fasterxml/jackson/databind/util/x;Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/core/util/i;
    .locals 3

    instance-of v0, p0, Lcom/fasterxml/jackson/core/util/i;

    if-nez v0, :cond_0

    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/i;

    if-nez v1, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/core/util/i;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fasterxml/jackson/core/g;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/i;-><init>([Lcom/fasterxml/jackson/core/g;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    check-cast p0, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/util/i;->o1(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    instance-of p0, p1, Lcom/fasterxml/jackson/core/util/i;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/util/i;->o1(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p0, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/core/g;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/i;-><init>([Lcom/fasterxml/jackson/core/g;)V

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/i;->d:[Lcom/fasterxml/jackson/core/g;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/util/i;->g:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/i;->g:Z

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/i;->d:[Lcom/fasterxml/jackson/core/g;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/util/i;->e:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->T0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->w0()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    return-object v0
.end method

.method public final n1()Lcom/fasterxml/jackson/core/g;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/i;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0
.end method

.method public final o1(Ljava/util/ArrayList;)V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->f:I

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/i;->d:[Lcom/fasterxml/jackson/core/g;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    instance-of v3, v2, Lcom/fasterxml/jackson/core/util/i;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/i;->o1(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
