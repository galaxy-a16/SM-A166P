.class final Lretrofit2/converter/gson/GsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/o0;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/gson/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/i;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/b;


# direct methods
.method public constructor <init>(Lcom/google/gson/b;Lcom/google/gson/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/b;",
            "Lcom/google/gson/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/b;

    iput-object p2, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/o0;

    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonResponseBodyConverter;->convert(Lokhttp3/o0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lokhttp3/o0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/o0;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/b;

    invoke-virtual {p1}, Lokhttp3/o0;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lt5/a;

    invoke-direct {v0, v1}, Lt5/a;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lt5/a;->b:Z

    .line 4
    :try_start_0
    iget-object p0, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/i;

    invoke-virtual {p0, v0}, Lcom/google/gson/i;->b(Lt5/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lt5/a;->C0()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/o0;->close()V

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/google/gson/JsonIOException;

    const-string v0, "JSON document was not fully consumed."

    invoke-direct {p0, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lokhttp3/o0;->close()V

    throw p0
.end method
