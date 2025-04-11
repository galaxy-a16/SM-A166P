.class public final Lec/p;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lec/t;

.field public final synthetic f:I

.field public final synthetic g:Lkc/e;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/t;ILkc/e;IZ)V
    .locals 0

    iput-object p2, p0, Lec/p;->e:Lec/t;

    iput p3, p0, Lec/p;->f:I

    iput-object p4, p0, Lec/p;->g:Lkc/e;

    iput p5, p0, Lec/p;->h:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lec/p;->e:Lec/t;

    iget-object v0, v0, Lec/t;->l:Ll4/e;

    iget-object v1, p0, Lec/p;->g:Lkc/e;

    iget v2, p0, Lec/p;->h:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "source"

    invoke-static {v1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lkc/e;->skip(J)V

    iget-object v0, p0, Lec/p;->e:Lec/t;

    iget-object v0, v0, Lec/t;->B:Lec/a0;

    iget v1, p0, Lec/p;->f:I

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lec/a0;->x(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lec/p;->e:Lec/t;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lec/p;->e:Lec/t;

    iget-object v1, v1, Lec/t;->E:Ljava/util/LinkedHashSet;

    iget p0, p0, Lec/p;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
