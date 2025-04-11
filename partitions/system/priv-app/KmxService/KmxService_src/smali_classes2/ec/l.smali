.class public final Lec/l;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lec/z;

.field public final synthetic f:Lec/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/z;Lec/o;)V
    .locals 0

    iput-object p2, p0, Lec/l;->e:Lec/z;

    iput-object p3, p0, Lec/l;->f:Lec/o;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lec/l;->f:Lec/o;

    iget-object v0, v0, Lec/o;->b:Lec/t;

    iget-object v0, v0, Lec/t;->b:Lec/j;

    iget-object v1, p0, Lec/l;->e:Lec/z;

    invoke-virtual {v0, v1}, Lec/j;->b(Lec/z;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lfc/m;->a:Lfc/m;

    sget-object v1, Lfc/m;->a:Lfc/m;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Http2Connection.Listener failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lec/l;->f:Lec/o;

    iget-object v3, v3, Lec/o;->b:Lec/t;

    iget-object v3, v3, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static {v1, v2, v0}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object p0, p0, Lec/l;->e:Lec/z;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1, v0}, Lec/z;->c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
