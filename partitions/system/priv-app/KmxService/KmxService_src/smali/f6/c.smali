.class public Lf6/c;
.super Lf6/j;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf6/j;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lf6/c;->e:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf6/j;-><init>([B)V

    iput p2, p0, Lf6/c;->e:I

    return-void
.end method

.method public static j(Ljava/lang/String;)Lf6/c;
    .locals 8

    const-string v0, "Topic filter"

    invoke-static {p0, v0}, Lp9/d;->Y(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lf6/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lf6/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "$share/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x23

    const-string v6, "."

    const-string v7, "Share name ["

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_2
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain single level wildcard (+), found at index "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_4
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain multi level wildcard (#), found at index "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    if-eq v1, v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    if-ge v1, v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lf6/c;->k(ILjava/lang/String;)I

    move-result v0

    new-instance v1, Lf6/b;

    invoke-direct {v1, p0, v0}, Lf6/b;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Topic filter must be at least one character long."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Share name must be at least one character long."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lf6/c;->k(ILjava/lang/String;)I

    move-result v0

    new-instance v1, Lf6/c;

    invoke-direct {v1, p0, v0}, Lf6/c;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static k(ILjava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, p0

    move v3, v0

    move v4, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    const/16 v7, 0x2b

    const-string v8, "Topic filter ["

    const/16 v9, 0x2f

    if-eqz v4, :cond_7

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v4, v1, :cond_3

    if-eq v4, v11, :cond_2

    if-eq v4, v10, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] contains misplaced wildcard characters. Single level wildcard (+) at index "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be followed by a topic level separator."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains misplaced wildcard characters. Multi level wildcard (#) must be the last character."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v5, v6, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v9, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    goto :goto_2

    :cond_5
    or-int/lit8 v3, v3, 0x2

    move v4, v10

    goto :goto_2

    :cond_6
    or-int/lit8 v3, v3, 0x1

    move v4, v11

    goto :goto_2

    :cond_7
    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_9

    if-ne v5, v9, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] contains misplaced wildcard characters. Wildcard ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ") at index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must follow a topic level separator."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return v3
.end method

.method public static l(I[B)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge p0, v4, :cond_a

    aget-byte v4, p1, p0

    const/16 v5, 0x23

    const/16 v6, 0x2b

    const/4 v7, -0x1

    const/16 v8, 0x2f

    if-eqz v3, :cond_5

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v3, v1, :cond_2

    if-eq v3, v9, :cond_1

    if-eq v3, v10, :cond_0

    goto :goto_1

    :cond_0
    if-eq v4, v8, :cond_7

    :cond_1
    return v7

    :cond_2
    if-eq v4, v5, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_7

    move v3, v0

    goto :goto_1

    :cond_3
    or-int/lit8 v2, v2, 0x2

    move v3, v10

    goto :goto_1

    :cond_4
    or-int/lit8 v2, v2, 0x1

    move v3, v9

    goto :goto_1

    :cond_5
    if-eq v4, v6, :cond_9

    if-ne v4, v5, :cond_6

    goto :goto_2

    :cond_6
    if-ne v4, v8, :cond_8

    :cond_7
    move v3, v1

    :cond_8
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    return v7

    :cond_a
    return v2
.end method


# virtual methods
.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()[B
    .locals 2

    invoke-virtual {p0}, Lf6/c;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf6/j;->g()[B

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
