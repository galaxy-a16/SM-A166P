.class public final Lo2/s;
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

.field public final f:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;Lob/a;I)V
    .locals 0

    iput p6, p0, Lo2/s;->a:I

    iput-object p1, p0, Lo2/s;->b:Lob/a;

    iput-object p2, p0, Lo2/s;->c:Lob/a;

    iput-object p3, p0, Lo2/s;->d:Lob/a;

    iput-object p4, p0, Lo2/s;->e:Lob/a;

    iput-object p5, p0, Lo2/s;->f:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lo2/s;->a:I

    iget-object v1, p0, Lo2/s;->f:Lob/a;

    iget-object v2, p0, Lo2/s;->e:Lob/a;

    iget-object v3, p0, Lo2/s;->d:Lob/a;

    iget-object v4, p0, Lo2/s;->c:Lob/a;

    iget-object v5, p0, Lo2/s;->b:Lob/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lp2/f;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Ls2/l;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lt2/d;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lu2/b;

    new-instance p0, Lr2/c;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lr2/c;-><init>(Ljava/util/concurrent/Executor;Lp2/f;Ls2/l;Lt2/d;Lu2/b;)V

    return-object p0

    :pswitch_1
    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lv2/a;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lv2/a;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lr2/d;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ls2/i;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ls2/k;

    new-instance p0, Lo2/r;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lo2/r;-><init>(Lv2/a;Lv2/a;Lr2/d;Ls2/i;Ls2/k;)V

    return-object p0

    :goto_0
    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lv2/a;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lv2/a;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v10, p0, Lo2/s;->f:Lob/a;

    new-instance p0, Lt2/k;

    move-object v8, v0

    check-cast v8, Lt2/a;

    move-object v9, v1

    check-cast v9, Lt2/n;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lt2/k;-><init>(Lv2/a;Lv2/a;Lt2/a;Lt2/n;Lob/a;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
