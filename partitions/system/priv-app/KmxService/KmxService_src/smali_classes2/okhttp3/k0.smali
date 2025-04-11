.class public final Lokhttp3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lokhttp3/e0;

.field public final b:Lokhttp3/Protocol;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lokhttp3/q;

.field public final f:Lokhttp3/s;

.field public final g:Lokhttp3/o0;

.field public final h:Lokhttp3/k0;

.field public final i:Lokhttp3/k0;

.field public final j:Lokhttp3/k0;

.field public final k:J

.field public final l:J

.field public final m:Lokhttp3/internal/connection/d;


# direct methods
.method public constructor <init>(Lokhttp3/e0;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/q;Lokhttp3/s;Lokhttp3/o0;Lokhttp3/k0;Lokhttp3/k0;Lokhttp3/k0;JJLokhttp3/internal/connection/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/k0;->a:Lokhttp3/e0;

    iput-object p2, p0, Lokhttp3/k0;->b:Lokhttp3/Protocol;

    iput-object p3, p0, Lokhttp3/k0;->c:Ljava/lang/String;

    iput p4, p0, Lokhttp3/k0;->d:I

    iput-object p5, p0, Lokhttp3/k0;->e:Lokhttp3/q;

    iput-object p6, p0, Lokhttp3/k0;->f:Lokhttp3/s;

    iput-object p7, p0, Lokhttp3/k0;->g:Lokhttp3/o0;

    iput-object p8, p0, Lokhttp3/k0;->h:Lokhttp3/k0;

    iput-object p9, p0, Lokhttp3/k0;->i:Lokhttp3/k0;

    iput-object p10, p0, Lokhttp3/k0;->j:Lokhttp3/k0;

    iput-wide p11, p0, Lokhttp3/k0;->k:J

    iput-wide p13, p0, Lokhttp3/k0;->l:J

    iput-object p15, p0, Lokhttp3/k0;->m:Lokhttp3/internal/connection/d;

    return-void
.end method

.method public static a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokhttp3/k0;->f:Lokhttp3/s;

    invoke-virtual {p0, p1}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/o0;->close()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response is not eligible for a body and must not be closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/k0;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/k0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/k0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object p0, p0, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
