.class public Lcom/fasterxml/jackson/core/JsonPointer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonPointer$Serialization;
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

.field public static final SEPARATOR:C = '/'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _asString:Ljava/lang/String;

.field protected final _asStringOffset:I

.field protected _hashCode:I

.field protected volatile _head:Lcom/fasterxml/jackson/core/JsonPointer;

.field protected final _matchingElementIndex:I

.field protected final _matchingPropertyName:Ljava/lang/String;

.field protected final _nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    iput-object p5, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iput p4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    iput-object p4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    invoke-static {p3}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return-void
.end method

.method private static _appendEscape(Ljava/lang/StringBuilder;C)V
    .locals 2

    const/16 v0, 0x30

    const/16 v1, 0x7e

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2f

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static _appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const-string v2, "~1"

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1

    const-string v2, "~0"

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static _buildPath(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    :goto_0
    if-eqz p3, :cond_0

    new-instance p1, Lcom/fasterxml/jackson/core/JsonPointer;

    iget p2, p3, Lcom/fasterxml/jackson/core/h;->b:I

    iget-object v1, p3, Lcom/fasterxml/jackson/core/h;->c:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    iget-object p3, p3, Lcom/fasterxml/jackson/core/h;->a:Lcom/fasterxml/jackson/core/h;

    move-object v0, p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final _compare(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int v0, p0, p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p2, p0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    if-eq p2, p4, :cond_1

    return v2

    :cond_1
    move p2, v0

    move p4, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static _extractEscapedSegment(Ljava/lang/String;IILjava/lang/StringBuilder;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    sub-int v2, v1, p1

    if-lez v2, :cond_0

    invoke-virtual {p3, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p3, p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x2f

    if-ne p2, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x7e

    if-ne p2, v1, :cond_2

    if-ge p1, v0, :cond_2

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p3, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    move p1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static final _parseIndex(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x30

    if-gt v4, v6, :cond_2

    if-ne v0, v5, :cond_1

    if-ne v4, v6, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    const/16 v3, 0x39

    if-le v4, v3, :cond_3

    return v1

    :cond_3
    :goto_0
    if-ge v5, v0, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_5

    if-ge v4, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-ne v0, v2, :cond_7

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/g;->i(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    return v1

    :cond_7
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/g;->g(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public static _parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    new-instance v4, Lcom/fasterxml/jackson/core/h;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v3, v5}, Lcom/fasterxml/jackson/core/h;-><init>(Lcom/fasterxml/jackson/core/h;ILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_0

    if-ge v2, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v5, v3, 0x1

    invoke-static {p0, v5, v2, v4}, Lcom/fasterxml/jackson/core/JsonPointer;->_extractEscapedSegment(Ljava/lang/String;IILjava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-gez v2, :cond_2

    invoke-static {p0, v3, v4, v1}, Lcom/fasterxml/jackson/core/JsonPointer;->_buildPath(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v5, Lcom/fasterxml/jackson/core/h;

    invoke-direct {v5, v1, v3, v4}, Lcom/fasterxml/jackson/core/h;-><init>(Lcom/fasterxml/jackson/core/h;ILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v1}, Lcom/fasterxml/jackson/core/JsonPointer;->_buildPath(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input: JSON Pointer expression must start with \'/\': \""

    const-string v2, "\""

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0
.end method

.method public static empty()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object v0
.end method

.method public static forPath(Lcom/fasterxml/jackson/core/i;Z)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 9

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->d()Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-ltz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->c()Lcom/fasterxml/jackson/core/i;

    move-result-object p0

    :cond_5
    const/4 v0, 0x0

    move-object v1, v0

    move v4, v2

    :goto_2
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, ""

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    new-instance v4, Lw1/e;

    const/4 v7, -0x1

    invoke-direct {v4, v1, v5, v7}, Lw1/e;-><init>(Lw1/e;Ljava/lang/String;I)V

    move-object v1, v4

    move v4, v6

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    iget v5, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-gez v5, :cond_9

    move v5, v2

    :cond_9
    add-int/lit8 v4, v4, 0x6

    new-instance v6, Lw1/e;

    invoke-direct {v6, v1, v0, v5}, Lw1/e;-><init>(Lw1/e;Ljava/lang/String;I)V

    move-object v1, v6

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/i;->c()Lcom/fasterxml/jackson/core/i;

    move-result-object p0

    goto :goto_2

    :cond_b
    if-nez v1, :cond_c

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object p1, v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, v0, Lw1/e;->b:I

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lw1/e;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    iget p1, v0, Lw1/e;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5
    iget-object p1, v0, Lw1/e;->c:Ljava/lang/Object;

    check-cast p1, Lw1/e;

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    move-object v6, v0

    :goto_6
    if-eqz p1, :cond_10

    iget-object v0, p1, Lw1/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/fasterxml/jackson/core/JsonPointer;

    iget v2, p1, Lw1/e;->b:I

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    move-object v6, v1

    goto :goto_7

    :cond_f
    iget v5, p1, Lw1/e;->a:I

    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    iget v3, p1, Lw1/e;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    move-object v6, v0

    :goto_7
    iget-object p1, p1, Lw1/e;->e:Ljava/lang/Object;

    check-cast p1, Lw1/e;

    goto :goto_6

    :cond_10
    return-object v6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer$Serialization;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/JsonPointer$Serialization;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public _constructHead()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->last()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v8, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v10
.end method

.method public _constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 9

    .line 2
    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v8
.end method

.method public append(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0
.end method

.method public appendIndex(I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative index cannot be appended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const-string v3, "/"

    if-eq v1, v2, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/core/JsonPointer;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    iget-object v2, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iget p1, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_compare(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getMatchingIndex()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return p0
.end method

.method public getMatchingProperty()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_hashCode:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_hashCode:I

    :cond_1
    return v0
.end method

.method public head()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq p0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    :cond_1
    return-object v0
.end method

.method public last()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq v0, v1, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public matchElement(I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public matchProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public matches()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesElement(I)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, p0, :cond_0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayMatchElement()Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayMatchProperty()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tail()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asStringOffset:I

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
