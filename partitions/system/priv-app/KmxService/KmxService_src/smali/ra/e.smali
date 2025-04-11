.class public final Lra/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/e;


# instance fields
.field public final synthetic a:Ljb/k;

.field public final synthetic b:Lu4/a;


# direct methods
.method public constructor <init>(Lu4/a;Ljb/k;)V
    .locals 0

    iput-object p1, p0, Lra/e;->b:Lu4/a;

    iput-object p2, p0, Lra/e;->a:Ljb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lra/e;->b:Lu4/a;

    invoke-virtual {v0, p2}, Lu4/a;->b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;

    move-result-object p2

    iget-object p0, p0, Lra/e;->a:Ljb/k;

    new-instance v0, Lra/f;

    invoke-direct {v0, p1, p2}, Lra/f;-><init>(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessageV3;)V

    invoke-interface {p0, v0}, Ljb/c;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lra/e;->b:Lu4/a;

    invoke-virtual {p0}, Lu4/a;->a()I

    move-result p0

    return p0
.end method
