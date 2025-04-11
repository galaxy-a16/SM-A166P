.class public final Lo2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lo2/f;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo2/f;

    invoke-direct {v0}, Lo2/f;-><init>()V

    sput-object v0, Lo2/f;->a:Lo2/f;

    const-string v0, "currentCacheSizeBytes"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/f;->b:Lc5/b;

    const-string v0, "maxCacheSizeBytes"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/f;->c:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lq2/e;

    check-cast p2, Lc5/d;

    iget-wide v0, p1, Lq2/e;->a:J

    sget-object p0, Lo2/f;->b:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Lo2/f;->c:Lc5/b;

    iget-wide v0, p1, Lq2/e;->b:J

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    return-void
.end method
