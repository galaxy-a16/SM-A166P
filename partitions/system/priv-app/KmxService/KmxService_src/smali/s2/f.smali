.class public final synthetic Ls2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls2/i;

.field public final synthetic c:Lo2/j;


# direct methods
.method public synthetic constructor <init>(Ls2/i;Lo2/j;I)V
    .locals 0

    iput p3, p0, Ls2/f;->a:I

    iput-object p1, p0, Ls2/f;->b:Ls2/i;

    iput-object p2, p0, Ls2/f;->c:Lo2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ls2/f;->a:I

    iget-object v1, p0, Ls2/f;->c:Lo2/j;

    iget-object p0, p0, Ls2/f;->b:Ls2/i;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Ls2/i;->c:Lt2/d;

    check-cast p0, Lt2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lt2/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lt2/f;-><init>(Lt2/k;Lo2/j;I)V

    invoke-virtual {p0, v0}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Ls2/i;->c:Lt2/d;

    check-cast p0, Lt2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lt2/f;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lt2/f;-><init>(Lt2/k;Lo2/j;I)V

    invoke-virtual {p0, v0}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
