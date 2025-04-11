.class public final Lkotlinx/coroutines/channels/k;
.super Lkotlinx/coroutines/channels/c0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/k;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 0

    return-void
.end method

.method public final s()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final t(Lkotlinx/coroutines/channels/u;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendBuffered@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/internal/z;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/l;->d()V

    :cond_0
    return-object p0
.end method
