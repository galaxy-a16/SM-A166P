.class public final Lcom/fasterxml/jackson/databind/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final b:Lcom/fasterxml/jackson/databind/i;

.field public final c:Lcom/fasterxml/jackson/core/g;

.field public final d:Lcom/fasterxml/jackson/core/i;

.field public final e:Ljava/lang/Object;

.field public final f:Z

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/fasterxml/jackson/databind/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/r;-><init>(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/i;ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/i;ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/r;->c:Lcom/fasterxml/jackson/core/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/r;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/r;->b:Lcom/fasterxml/jackson/databind/i;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/r;->f:Z

    const/4 p2, 0x0

    if-nez p5, :cond_0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/r;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/r;->e:Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/r;->d:Lcom/fasterxml/jackson/core/i;

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H0()Lcom/fasterxml/jackson/core/i;

    move-result-object p2

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->a1()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->i()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p1, p3, :cond_3

    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p1, p3, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/i;->c()Lcom/fasterxml/jackson/core/i;

    move-result-object p2

    :cond_4
    :goto_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/r;->d:Lcom/fasterxml/jackson/core/i;

    const/4 p1, 0x2

    :goto_2
    iput p1, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/r;->c:Lcom/fasterxml/jackson/core/g;

    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    return v2

    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->H0()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/r;->d:Lcom/fasterxml/jackson/core/i;

    if-ne v0, v4, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_5

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_2

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_1

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->H0()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->i()V

    :cond_6
    :goto_3
    if-nez v3, :cond_7

    return v1

    :cond_7
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v4, :cond_a

    :cond_8
    iput v1, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/r;->f:Z

    if-eqz p0, :cond_9

    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    :cond_9
    return v1

    :cond_a
    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    return v2

    :cond_b
    return v1
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/r;->c:Lcom/fasterxml/jackson/core/g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/r;->c:Lcom/fasterxml/jackson/core/g;

    iget v1, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/r;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/r;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/r;->b:Lcom/fasterxml/jackson/databind/i;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/r;->e:Ljava/lang/Object;

    if-nez v5, :cond_1

    :try_start_0
    invoke-virtual {v4, v0, v1}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v0, v1, v5}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->i()V

    return-object v5

    :goto_2
    iput v3, p0, Lcom/fasterxml/jackson/databind/r;->g:I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->i()V

    throw v1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/r;->a()Z

    move-result p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/r;->d()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
