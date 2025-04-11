.class public abstract Lokhttp3/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lokhttp3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/h0;

    invoke-direct {v0}, Lokhttp3/h0;-><init>()V

    sput-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Ljava/io/File;Lokhttp3/w;)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$asRequestBody"

    .line 1
    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/f0;-><init>(Ljava/lang/Object;Lokhttp3/w;I)V

    return-object v0
.end method

.method public static final create(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/i0;
    .locals 1

    .line 2
    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lokhttp3/h0;->a(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;Ljava/io/File;)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "file"

    .line 3
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lokhttp3/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/f0;-><init>(Ljava/lang/Object;Lokhttp3/w;I)V

    return-object v0
.end method

.method public static final create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/i0;
    .locals 1

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 5
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lokhttp3/h0;->a(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;Lokio/ByteString;)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 6
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lokhttp3/f0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/f0;-><init>(Ljava/lang/Object;Lokhttp3/w;I)V

    return-object v0
.end method

.method public static final create(Lokhttp3/w;[B)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    .line 8
    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 9
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lokhttp3/h0;->b([BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;[BI)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    .line 10
    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 11
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2, v1}, Lokhttp3/h0;->b([BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;[BII)Lokhttp3/i0;
    .locals 1

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 12
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2, p3}, Lokhttp3/h0;->b([BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokio/ByteString;Lokhttp3/w;)Lokhttp3/i0;
    .locals 2

    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$toRequestBody"

    .line 13
    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/f0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/f0;-><init>(Ljava/lang/Object;Lokhttp3/w;I)V

    return-object v0
.end method

.method public static final create([B)Lokhttp3/i0;
    .locals 4

    .line 14
    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lokhttp3/h0;->c(Lokhttp3/h0;[BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLokhttp3/w;)Lokhttp3/i0;
    .locals 3

    .line 15
    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, p1, v1, v2}, Lokhttp3/h0;->c(Lokhttp3/h0;[BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLokhttp3/w;I)Lokhttp3/i0;
    .locals 2

    .line 16
    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    const/4 v1, 0x4

    invoke-static {v0, p0, p1, p2, v1}, Lokhttp3/h0;->c(Lokhttp3/h0;[BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLokhttp3/w;II)Lokhttp3/i0;
    .locals 1

    .line 17
    sget-object v0, Lokhttp3/i0;->Companion:Lokhttp3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lokhttp3/h0;->b([BLokhttp3/w;II)Lokhttp3/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/w;
.end method

.method public isDuplex()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOneShot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract writeTo(Lkc/f;)V
.end method
