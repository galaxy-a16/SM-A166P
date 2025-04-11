.class public Lcom/fasterxml/jackson/core/io/ContentReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_MAX_CONTENT_SNIPPET:I = 0x1f4

.field protected static final UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _isContentTextual:Z

.field protected final _length:I

.field protected final _offset:I

.field protected final transient _rawContent:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    iput p3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    iput p4, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return-void
.end method

.method public static construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    return-object v0
.end method

.method public static rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public static rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p1

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    return-void
.end method

.method public static unknown()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public _append(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/core/io/ContentReference;->_appendEscaped(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public _appendEscaped(Ljava/lang/StringBuilder;I)Z
    .locals 1

    const/16 p0, 0xd

    if-eq p2, p0, :cond_1

    const/16 p0, 0xa

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x5c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x75

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0xc

    and-int/lit8 p0, p0, 0xf

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->a:[C

    aget-char p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0x8

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0x4

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p2, 0xf

    aget-char p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public _truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    aget p0, p2, p0

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p0

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public _truncate([B[II)Ljava/lang/String;
    .locals 1

    .line 2
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    aget p0, p2, p0

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p3, p1, p0, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p3
.end method

.method public _truncate([C[II)Ljava/lang/String;
    .locals 1

    .line 3
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    aget p0, p2, p0

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p3
.end method

.method public _truncateOffsets([II)V
    .locals 2

    const/4 p0, 0x0

    aget v0, p1, p0

    if-gez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    if-lt v0, p2, :cond_1

    move v0, p2

    :cond_1
    :goto_0
    aput v0, p1, p0

    const/4 p0, 0x1

    aget v1, p1, p0

    sub-int/2addr p2, v0

    if-ltz v1, :cond_2

    if-le v1, p2, :cond_3

    :cond_2
    aput p2, p1, p0

    :cond_3
    return-void
.end method

.method public appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "UNKNOWN"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    const-string v2, "byte[]"

    goto :goto_1

    :cond_3
    instance-of v1, v0, [C

    if-eqz v1, :cond_4

    const-string v2, "char[]"

    :cond_4
    :goto_1
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->hasTextualContent()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->maxContentSnippetLength()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentOffset()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v5, " chars"

    if-eqz v3, :cond_5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    instance-of v3, v0, [C

    if-eqz v3, :cond_6

    check-cast v0, [C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([C[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    instance-of v3, v0, [B

    if-eqz v3, :cond_7

    check-cast v0, [B

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([B[II)Ljava/lang/String;

    move-result-object v0

    const-string v5, " bytes"

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    aget p0, v2, v4

    if-le p0, v1, :cond_a

    const-string p0, "[truncated "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v4

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    instance-of v1, v0, [B

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result p0

    if-gez p0, :cond_9

    check-cast v0, [B

    array-length p0, v0

    :cond_9
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_3
    return-object p1
.end method

.method public buildSourceDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public contentLength()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return p0
.end method

.method public contentOffset()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    if-nez p0, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    if-nez p1, :cond_6

    return v1

    :cond_6
    instance-of v2, p0, Ljava/io/File;

    if-nez v2, :cond_9

    instance-of v2, p0, Ljava/net/URL;

    if-nez v2, :cond_9

    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    if-ne p0, p1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    return v0

    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_3
    return v1
.end method

.method public getRawContent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    return-object p0
.end method

.method public hasTextualContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public maxContentSnippetLength()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p0
.end method
