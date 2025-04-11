.class public final Lcom/fasterxml/jackson/databind/deser/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:[B

.field public final c:I

.field public final d:I

.field public final e:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/k;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/k;->b:[B

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/k;->c:I

    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/k;->d:I

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/k;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method public final a()Lcom/fasterxml/jackson/core/g;
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/k;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/k;->b:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/k;->d:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/k;->c:I

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/k;->a:Ljava/io/InputStream;

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v4, :cond_2

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/core/io/f;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/k;->a:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/k;->b:[B

    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/k;->c:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/k;->d:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/io/f;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BII)V

    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method
