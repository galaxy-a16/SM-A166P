.class public final Lr2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;

.field public final c:Lob/a;

.field public final d:Lob/a;

.field public final e:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;I)V
    .locals 0

    iput p5, p0, Lr2/f;->a:I

    iput-object p1, p0, Lr2/f;->b:Lob/a;

    iput-object p2, p0, Lr2/f;->c:Lob/a;

    iput-object p3, p0, Lr2/f;->d:Lob/a;

    iput-object p4, p0, Lr2/f;->e:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lr2/f;->a:I

    iget-object v1, p0, Lr2/f;->e:Lob/a;

    iget-object v2, p0, Lr2/f;->d:Lob/a;

    iget-object v3, p0, Lr2/f;->c:Lob/a;

    iget-object p0, p0, Lr2/f;->b:Lob/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/b;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/a;

    new-instance v1, Ls2/d;

    invoke-direct {v1, p0, v0, v2}, Ls2/d;-><init>(Landroid/content/Context;Lt2/d;Ls2/b;)V

    return-object v1

    :goto_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/l;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/b;

    new-instance v3, Ls2/k;

    invoke-direct {v3, p0, v0, v2, v1}, Ls2/k;-><init>(Ljava/util/concurrent/Executor;Lt2/d;Ls2/l;Lu2/b;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
