.class public final Lokhttp3/m0;
.super Lokhttp3/o0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Lkc/g;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLkc/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/m0;->a:I

    .line 1
    invoke-direct {p0}, Lokhttp3/o0;-><init>()V

    iput-object p1, p0, Lokhttp3/m0;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lokhttp3/m0;->b:J

    iput-object p4, p0, Lokhttp3/m0;->c:Lkc/g;

    return-void
.end method

.method public constructor <init>(Lokhttp3/w;JLkc/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/m0;->a:I

    .line 2
    iput-object p4, p0, Lokhttp3/m0;->c:Lkc/g;

    iput-object p1, p0, Lokhttp3/m0;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lokhttp3/m0;->b:J

    invoke-direct {p0}, Lokhttp3/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/m0;->b:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/w;
    .locals 2

    iget v0, p0, Lokhttp3/m0;->a:I

    iget-object p0, p0, Lokhttp3/m0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lokhttp3/w;

    return-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {p0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final source()Lkc/g;
    .locals 0

    iget-object p0, p0, Lokhttp3/m0;->c:Lkc/g;

    return-object p0
.end method
