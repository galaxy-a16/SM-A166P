.class public final Lo2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lo2/b;

.field public static final b:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo2/b;

    invoke-direct {v0}, Lo2/b;-><init>()V

    sput-object v0, Lo2/b;->a:Lo2/b;

    const-string v0, "storageMetrics"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/b;->b:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lq2/b;

    check-cast p2, Lc5/d;

    iget-object p0, p1, Lq2/b;->a:Lq2/e;

    sget-object p1, Lo2/b;->b:Lc5/b;

    invoke-interface {p2, p1, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
