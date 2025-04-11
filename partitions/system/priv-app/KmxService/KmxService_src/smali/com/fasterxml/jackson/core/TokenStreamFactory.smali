.class public abstract Lcom/fasterxml/jackson/core/TokenStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _checkRangeBoundsForByteArray([BII)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Invalid `byte[]` argument: `null`"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_reportRangeError(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    array-length p1, p1

    add-int v0, p2, p3

    or-int v1, p2, p3

    or-int/2addr v1, v0

    sub-int v0, p1, v0

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `byte[]` of length %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_reportRangeError(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public _checkRangeBoundsForCharArray([CII)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Invalid `char[]` argument: `null`"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_reportRangeError(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    array-length p1, p1

    add-int v0, p2, p3

    or-int v1, p2, p3

    or-int/2addr v1, v0

    sub-int v0, p1, v0

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `char[]` of length %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_reportRangeError(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public _createDataOutputWrapper(Ljava/io/DataOutput;)Ljava/io/OutputStream;
    .locals 1

    new-instance p0, Lcom/fasterxml/jackson/core/io/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/c;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public _fileInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public _fileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 0

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_1

    new-instance p0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public _reportRangeError(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract canHandleBinaryNatively()Z
.end method

.method public abstract canParseAsync()Z
.end method

.method public abstract canUseSchema(Lcom/fasterxml/jackson/core/c;)Z
.end method

.method public abstract createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createGenerator(Ljava/io/DataOutput;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract createNonBlockingByteArrayParser()Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createNonBlockingByteBufferParser()Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser([B)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser([BII)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser([C)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract createParser([CII)Lcom/fasterxml/jackson/core/g;
.end method

.method public abstract getFormatGeneratorFeatures()I
.end method

.method public abstract getFormatName()Ljava/lang/String;
.end method

.method public abstract getFormatParserFeatures()I
.end method

.method public abstract getFormatReadFeatureType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFormatWriteFeatureType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGeneratorFeatures()I
.end method

.method public abstract getParserFeatures()I
.end method

.method public abstract isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
.end method

.method public abstract requiresPropertyOrdering()Z
.end method

.method public abstract synthetic version()Lcom/fasterxml/jackson/core/Version;
.end method
