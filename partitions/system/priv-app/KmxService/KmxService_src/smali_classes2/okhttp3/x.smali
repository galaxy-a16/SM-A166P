.class public final Lokhttp3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lokio/ByteString;

.field public b:Lokhttp3/w;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lokio/ByteString;->Companion:Lkc/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkc/h;->b(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->a:Lokio/ByteString;

    sget-object v0, Lokhttp3/z;->e:Lokhttp3/w;

    iput-object v0, p0, Lokhttp3/x;->b:Lokhttp3/w;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/x;->c:Ljava/util/ArrayList;

    return-void
.end method
