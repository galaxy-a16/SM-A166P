.class public final Lokhttp3/g0;
.super Lokhttp3/i0;
.source "SourceFile"


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lokhttp3/w;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lokhttp3/w;[BII)V
    .locals 0

    iput-object p2, p0, Lokhttp3/g0;->a:[B

    iput-object p1, p0, Lokhttp3/g0;->b:Lokhttp3/w;

    iput p3, p0, Lokhttp3/g0;->c:I

    iput p4, p0, Lokhttp3/g0;->d:I

    invoke-direct {p0}, Lokhttp3/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget p0, p0, Lokhttp3/g0;->c:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/w;
    .locals 0

    iget-object p0, p0, Lokhttp3/g0;->b:Lokhttp3/w;

    return-object p0
.end method

.method public final writeTo(Lkc/f;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lokhttp3/g0;->d:I

    iget v1, p0, Lokhttp3/g0;->c:I

    iget-object p0, p0, Lokhttp3/g0;->a:[B

    invoke-interface {p1, v0, v1, p0}, Lkc/f;->e0(II[B)Lkc/f;

    return-void
.end method
