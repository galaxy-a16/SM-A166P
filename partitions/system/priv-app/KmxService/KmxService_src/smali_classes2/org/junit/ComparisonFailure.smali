.class public Lorg/junit/ComparisonFailure;
.super Ljava/lang/AssertionError;
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

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    iput-object p3, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActual()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    return-object p0
.end method

.method public getExpected()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    new-instance v0, Lv/c;

    iget-object v1, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v2, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lv/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lv/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lv/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lp1/v;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lp1/v;-><init>(Lv/c;I)V

    iget-object v0, v1, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v3, Lv/c;

    iget v3, v3, Lv/c;->b:I

    const-string v4, "..."

    if-gt v0, v3, :cond_1

    iget-object v0, v1, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lp1/v;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v6, Lv/c;

    iget v6, v6, Lv/c;->b:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, v1, Lp1/v;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v5, Lv/c;

    iget v5, v5, Lv/c;->b:I

    if-gt v3, v5, :cond_2

    iget-object v2, v1, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lp1/v;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v6, Lv/c;

    iget v6, v6, Lv/c;->b:I

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v4, Lv/c;

    iget-object v4, v4, Lv/c;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lp1/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v4, Lv/c;

    iget-object v4, v4, Lv/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lp1/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lv9/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v1, v0, Lv/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lv/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lv9/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method
