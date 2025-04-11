.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lo2/a;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;

.field public static final d:Lc5/b;

.field public static final e:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo2/a;

    invoke-direct {v0}, Lo2/a;-><init>()V

    sput-object v0, Lo2/a;->a:Lo2/a;

    const-string v0, "window"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/a;->b:Lc5/b;

    const-string v0, "logSourceMetrics"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/a;->c:Lc5/b;

    const-string v0, "globalMetrics"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/a;->d:Lc5/b;

    const-string v0, "appNamespace"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lo2/a;->e:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lq2/a;

    check-cast p2, Lc5/d;

    iget-object p0, p1, Lq2/a;->a:Lq2/f;

    sget-object v0, Lo2/a;->b:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lo2/a;->c:Lc5/b;

    iget-object v0, p1, Lq2/a;->b:Ljava/util/List;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lo2/a;->d:Lc5/b;

    iget-object v0, p1, Lq2/a;->c:Lq2/b;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lo2/a;->e:Lc5/b;

    iget-object p1, p1, Lq2/a;->d:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
