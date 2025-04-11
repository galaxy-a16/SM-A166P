.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;
.super Ljava/io/FilterInputStream;
.source "SevenZFile.java"


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final count(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->access$014(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J

    return-void
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->count(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->count(I)V

    :cond_0
    return p1
.end method
