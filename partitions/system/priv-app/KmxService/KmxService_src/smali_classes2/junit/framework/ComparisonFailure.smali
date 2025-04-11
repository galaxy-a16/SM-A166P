.class public Ljunit/framework/ComparisonFailure;
.super Ljunit/framework/AssertionFailedError;
.source "SourceFile"


# static fields
.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iput-object p3, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActual()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    return-object p0
.end method

.method public getExpected()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    iget-object v1, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v2, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    iget v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    iget v5, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    iget v4, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    if-lt v3, v4, :cond_4

    if-lt v2, v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    :goto_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_6
    const-string p0, ""

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "expected:<"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> but was:<"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
