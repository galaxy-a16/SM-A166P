.class final Lretrofit2/converter/gson/GsonRequestBodyConverter;
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
        "TT;",
        "Lokhttp3/i0;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/w;

.field private static final UTF_8:Ljava/nio/charset/Charset;


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
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    const-string v0, "application/json; charset=UTF-8"

    :try_start_0
    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/w;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

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

    iput-object p1, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/b;

    iput-object p2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/i0;

    move-result-object p0

    return-object p0
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/i0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/i0;"
        }
    .end annotation

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 2
    new-instance v2, Lcom/fasterxml/jackson/core/io/c;

    invoke-direct {v2, v0}, Lcom/fasterxml/jackson/core/io/c;-><init>(Lkc/e;)V

    .line 3
    sget-object v3, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/b;

    invoke-virtual {v2, v1}, Lcom/google/gson/b;->e(Ljava/io/Writer;)Lt5/b;

    move-result-object v1

    iget-object p0, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/i;

    invoke-virtual {p0, v1, p1}, Lcom/google/gson/i;->c(Lt5/b;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lt5/b;->close()V

    sget-object p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/w;

    invoke-virtual {v0}, Lkc/e;->m()Lokio/ByteString;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/i0;->create(Lokhttp3/w;Lokio/ByteString;)Lokhttp3/i0;

    move-result-object p0

    return-object p0
.end method
